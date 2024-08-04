# New Release Checklist

## Increase new release

- increase version in text in `/military-grf/custom_tags.txt`
- increase `version` in `/military-grf/header.pnml`
- update `/README.md` - Content chapter
- update `/CHANGELOG.md`

## New content

- create `pnml` file in `/military-grf/pnml/`
- add `pnml` file to `/military-grf/main.pnml`
- add spritesets PNG file to `/military-grf/gfx/` or create spriteset from voxel file by `make gfx`
- check license for external 3d models - add to `/README.md` if external model is used for import into voxels
