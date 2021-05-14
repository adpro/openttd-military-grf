NAME=military-items
MAKE?=make
PYTHON?=/usr/bin/env python3
SRCDIR=military-grf
OUTDIR=output
BUNDLEDIR=output/bundle
MKDIR_P=mkdir -p
NMLFILE=military_items.nml

VERSION="$(shell cat $(SRCDIR)/custom_tags.txt | awk '/VERSION/ {print $2}' | sed -e 's/://' -e 's/VERSION//' -e 's/^[ \t]*//')"


ifdef NMLFILE
	CC             ?= "$(shell which cc 2>/dev/null)"
	CC_FLAGS       ?= -C -E -nostdinc -x c-header
endif

.PHONY: help build bundle clean deploy copy test

# self-documenting function is made based on https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## Shows this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

${OUTDIR}:
	@${MKDIR_P} ${OUTDIR}

${BUNDLEDIR}:
	@${MKDIR_P} ${BUNDLEDIR}


build: ${OUTDIR} ## builds nml files into grf file
	@echo "[CC] Compiling NML..."
	@cd $(SRCDIR) \
	&& $(CC) $(CC_FLAGS) -o $(NMLFILE) main.pnml
	@echo "[NML] Compiling NewGRF..."
	@cd $(SRCDIR) \
	&& nmlc --grf ../output/$(NAME).grf $(NMLFILE)

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

deploy: ## deploys grf to BananaS server
	@echo 'NOT IMPLEMENTED'

copy: ## copies data
	@echo "[COPY] Copying files to game folder..."
	@[ ! -d $(OUTDIR) ] || cp -f $(OUTDIR)/$(NAME).grf ~/Documents/OpenTTD/newgrf

test: clean build copy ## run clean, build and copy
