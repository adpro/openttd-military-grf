MAKE?=make
PYTHON?=/usr/bin/env python3
SRCDIR=military-grf
OUTDIR=output	
MKDIR_P=mkdir -p

.PHONY: help build clean deploy copy test

# self-documenting function is made based on https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## Shows this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

${OUTDIR}:
	${MKDIR_P} ${OUTDIR}

build: ${OUTDIR} ## builds nml files into grf file
	cd $(SRCDIR) \
	&& nmlc --grf ../output/military-items.grf military.nml

clean: ## deletes output dir with its content
	[ ! -d $(OUTDIR) ] || rm -rf $(OUTDIR)

deploy: ## deploys grf to BananaS server
	echo 'NOT IMPLEMENTED'

copy: ## copies data
	[ ! -d $(OUTDIR) ] || cp -f output/military-items.grf ~/Documents/OpenTTD/newgrf

test: clean build copy ## run clean, build and copy