NAME=military-items
MAKE?=make
PYTHON?=/usr/bin/env python3
SRCDIR=military-grf
OUTDIR=output
INTERDIR=intermediate
BUNDLEDIR=${OUTDIR}/bundle
MKDIR_P=mkdir -p
NMLFILE=military_items.nml

BUILD_NUMBER_FILE=build-number.txt
VERSION_FILE="$(SRCDIR)/custom_tags.txt"

# https://stackoverflow.com/questions/714100/os-detecting-makefile
ifeq ($(OS),Windows_NT)
    SED=sed -i 
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        SED=sed -i
    endif
    ifeq ($(UNAME_S),Darwin)
        SED=sed -i ""
    endif
endif

VERSION=$$(cat $(VERSION_FILE) | awk '/VERSION/ {print $2}' | sed -e 's/://' -e 's/VERSION//' -e 's/^[ \t]*//')


LIST_HEL := air_sa321 air_sa330 air_sa532 air_ec725 air_aw101 air_ch53 air_ch53k air_ch148 air_uh60 air_ch37 air_aw139 air_mi6 air_mi17 air_mi26 air_mi38 air_uh1
LIST_ROTORS := air_sa321 air_sa330 air_ec725 air_aw101 air_ch53 air_uh60 air_ch37 air_aw139 air_mi6 air_mi17 air_mi26 air_mi38 air_uh1
LIST_AIR_F16 := air_f16a air_f16c air_f16c30 air_f16c50 air_f16c70 air_f16d air_f16e60 air_f16f60
LIST_AIR := air_a6m air_aero_l39_v2 air_aero_l39ng_v2 air_f16

ifdef NMLFILE
	CC             ?= "which cc 2>/dev/null"
	CC_FLAGS       ?= -C -E -nostdinc -x c-header
endif

.PHONY: help build bundle clean deploy copy test gfx cleaninter

# self-documenting function is made based on https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## Shows this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

${OUTDIR}:
	@${MKDIR_P} ${OUTDIR}

${BUNDLEDIR}:
	@${MKDIR_P} ${BUNDLEDIR}

# Build number file.  Increment if any object file changes.
$(BUILD_NUMBER_FILE): $(OUTDIR)
	@if ! test -f $(BUILD_NUMBER_FILE); then echo 0 > $(BUILD_NUMBER_FILE); fi
	@echo $$(($$(cat $(BUILD_NUMBER_FILE)) + 1)) > $(BUILD_NUMBER_FILE)
	

build: ${OUTDIR} $(BUILD_NUMBER_FILE) ## builds nml files into grf file
	@echo "[CC] Compiling NML..."
	@cd $(SRCDIR) \
	&& $(CC) $(CC_FLAGS) -o $(NMLFILE) main.pnml
	@echo "[Make] Build number: " $$(cat $(BUILD_NUMBER_FILE))
	$(eval $@_BUILD_VERSION := $(shell cat $(BUILD_NUMBER_FILE)))
	@$(SED) "1s/+[0-9]*/+$($@_BUILD_VERSION)/" $(VERSION_FILE)
	@echo "[NML] Compiling NewGRF..."
	@cd $(SRCDIR) \
	&& poetry run nmlc --grf ../${OUTDIR}/$(NAME).grf $(NMLFILE)

bundle: build ${BUNDLEDIR} ## make tar bundle
	@echo "[PANDOC] Compiling text files from markdown..."
	@pandoc -f markdown -t plain README.md -o $(BUNDLEDIR)/readme.txt
	@pandoc -f markdown -t plain CHANGELOG.md -o $(BUNDLEDIR)/changelog.txt
	@cp -f LICENSE $(BUNDLEDIR)/license.txt
	@cp -f $(OUTDIR)/$(NAME).grf $(BUNDLEDIR)/
	@echo "[TAR] Creating bundle..."
	@tar -cf $(OUTDIR)/$(NAME)-$(VERSION).tar -C $(BUNDLEDIR)/ .

clean: ## deletes output dir with its content
	@echo "[CLEAN] Cleaning repo directory..."
	@[ ! -d $(OUTDIR) ] || rm -rf $(OUTDIR)
	@[ ! -f $(SRCDIR)/$(NMLFILE) ] || rm $(SRCDIR)/$(NMLFILE)

cleaninter: ## deletes intermediate dir
	@echo "[CLEAN] Cleaning itermediate directory..."
	@[ ! -d $(INTERDIR) ] || rm -rf $(INTERDIR)

deploy: ## deploys grf to BananaS server
	@echo 'NOT IMPLEMENTED'

copy: ## copies data
	@echo "[COPY] Copying files to game folder..."
	@[ ! -d $(OUTDIR) ] || cp -f $(OUTDIR)/$(NAME).grf ~/Documents/OpenTTD/newgrf

test: clean build copy ## run clean, build and copy

gfx:	## generate PNGs from vox files
	@/bin/bash make_gfx.sh "$(INTERDIR)" "$(LIST_HEL) $(LIST_AIR)" "$(LIST_ROTORS)"
