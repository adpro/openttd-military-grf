#!/bin/bash 

folder=$1
mkdir -p ${folder}
current_dir=$PWD

# echo "Current Dir: ${current_dir}"
# echo "Folder: ${folder}"

GFXDIR=${folder}/gfx
JSONDIR=${folder}/json
VOXDIR=${folder}/vox
VOXDIRAIR=${VOXDIR}/air

echo "Copying files to ${folder}.."
mkdir -p ${GFXDIR}
mkdir -p ${JSONDIR}
mkdir -p ${VOXDIR}
mkdir -p ${VOXDIRAIR}
VOXROOT=military-grf/voxels
JSONROOT=military-grf/gorender
find ${VOXROOT}/aircraft -name '*.vox' -exec cp -p {} ${VOXDIRAIR} \;
find ${JSONROOT} -name '*.json' -exec cp -p {} ${JSONDIR} \;
# cp -p ${JSONROOT}/*.json ${JSONDIR}

cd $GFXDIR
# echo "PWD: ${PWD}"
echo "Rendering air_* sprites.."
for i in $2; do
    ls ../../${VOXDIRAIR}/${i}_*.vox | grep -v "_rotor.vox" | xargs renderobject -palette ../../${JSONDIR}/ttd_palette.json -m ../../${JSONDIR}/$i.json -s 1,2,4 -8 -u -p -r
done

for i in $3; do
    ls ../../${VOXDIRAIR}/${i}*_rotor.vox | grep -v "_w_rotor.vox" | xargs renderobject -palette ../../${JSONDIR}/ttd_palette.json -m ../../${JSONDIR}/${i}_rotor.json -s 1,2,4 -8 -u -p -r
done
cd $current_dir

