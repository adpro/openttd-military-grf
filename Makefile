MAKE?=make
PYTHON?=/usr/bin/env python3
SRCDIR=military-grf
OUTDIR=output	
MKDIR_P=mkdir -p
NMLFILE=military_items.nml

ifdef NMLFILE
	CC             ?= "$(shell which cc 2>/dev/null)"
	CC_FLAGS       ?= -C -E -nostdinc -x c-header
endif

.PHONY: help build clean deploy copy test

# self-documenting function is made based on https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## Shows this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

${OUTDIR}:
	${MKDIR_P} ${OUTDIR}

build: ${OUTDIR} ## builds nml files into grf file
	@echo "[CC] Compiling NML..."
	@cd $(SRCDIR) \
	&& $(CC) $(CC_FLAGS) -o $(NMLFILE) main.pnml
	@echo "[NML] Compiling NewGRF..."
	@cd $(SRCDIR) \
	&& nmlc --grf ../output/military-items.grf $(NMLFILE)

clean: ## deletes output dir with its content
	@echo "[CLEAN] Cleaning repo directory..."
	@[ ! -d $(OUTDIR) ] || rm -rf $(OUTDIR)
	@[ ! -f $(SRCDIR)/$(NMLFILE) ] || rm $(SRCDIR)/$(NMLFILE)

deploy: ## deploys grf to BananaS server
	@echo 'NOT IMPLEMENTED'

copy: ## copies data
	@echo "[COPY] Copying files to game folder..."
	@[ ! -d $(OUTDIR) ] || cp -f output/military-items.grf ~/Documents/OpenTTD/newgrf

test: clean build copy ## run clean, build and copy
