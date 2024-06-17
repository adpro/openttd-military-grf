#!/bin/bash

for i in $1; do
    echo "Rendering output/gfx/src/${i}_2cc_[zoom]_8bpp.png"
    renderobject -i military-grf/voxels/${i}_2cc.vox -palette military-grf/gorender/ttd_palette.json -m military-grf/gorender/$i.json -o output/gfx/src/${i}_2cc -s 1,2,4 -8
    renderobject -i military-grf/voxels/${i}_2cc_landing.vox -palette military-grf/gorender/ttd_palette.json -m military-grf/gorender/$i.json -o output/gfx/src/${i}_2cc_landing -s 1,2,4 -8
    echo "Compiling output/gfx/${i}_2cc.png"
    montage -mode concatenate -tile 1x -geometry +0+1 output/gfx/src/${i}_2cc_*.png output/gfx/${i}_2cc.png    
done

for i in $2; do
    echo "Rendering output/gfx/src/${i}_rotor_[zoom]_8bpp.png"
    renderobject -i military-grf/voxels/${i}_rotor.vox -palette military-grf/gorender/ttd_palette.json -m military-grf/gorender/${i}_rotor.json -o output/gfx/src/${i}_rotor -s 1,2,4 -8
    echo "Compiling output/gfx/${i}_rotor.png"
    montage -mode concatenate -tile 1x -geometry +0+1 output/gfx/src/${i}_rotor_*.png output/gfx/${i}_rotor.png    
done
