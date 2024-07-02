#!/bin/bash 

folder=$1

mkdir -p ${folder}
current_dir=$PWD
cd $folder

echo "Rendering air sprites"
for i in $2; do
    # echo "Rendering ${folder}/${i}_2cc.png"
    ls ../../military-grf/voxels/${i}_*.vox | grep -v "_rotor.vox" | xargs renderobject -palette ../../military-grf/gorender/ttd_palette.json -m ../../military-grf/gorender/$i.json -s 1,2,4 -8 -u -p -r
    # renderobject -i military-grf/voxels/${i}_2cc.vox -palette military-grf/gorender/ttd_palette.json -m military-grf/gorender/$i.json -o ${folder}/${i}_2cc -s 1,2,4 -8
    # renderobject -i military-grf/voxels/${i}_2cc_landing.vox -palette military-grf/gorender/ttd_palette.json -m military-grf/gorender/$i.json -o ${folder}/${i}_2cc_landing -s 1,2,4 -8
    # montage -mode concatenate -tile 1x -geometry +0+1 output/gfx/src/${i}_2cc_*.png output/gfx/${i}_2cc_montage.png
    # python convert_openttd_palette.py output/gfx/${i}_2cc_montage.png output/gfx/${i}_2cc.png
done

for i in $3; do
    # echo "Rendering ${folder}/${i}_rotor.png"
    ls ../../military-grf/voxels/${i}*_rotor.vox | grep -v "_w_rotor.vox" | xargs renderobject -palette ../../military-grf/gorender/ttd_palette.json -m ../../military-grf/gorender/${i}_rotor.json -s 1,2,4 -8 -u -p -r
    # renderobject -i military-grf/voxels/${i}_rotor.vox -palette military-grf/gorender/ttd_palette.json -m military-grf/gorender/${i}_rotor.json -o ${folder}/${i}_rotor -s 1,2,4 -8
    # montage -mode concatenate -tile 1x -geometry +0+1 output/gfx/src/${i}_rotor_*.png output/gfx/${i}_rotor_montage.png    
    # python convert_openttd_palette.py output/gfx/${i}_rotor_montage.png output/gfx/${i}_rotor.png
done
cd $current_dir
