#!/bin/bash

let "width = $1"
let "height = $2"

let "width_minus1 = $1 - 1"
let "height_minus1 = $2 - 1"

let "width_mid = $1 / 2"
let "height_mid = $2 / 2"

let "pointsize = $1 / 5";

dimension="$width""x""$height"

convert -size "$dimension" xc:skyblue \
        -font PT-Sans -pointsize "$pointsize" -gravity south \
        -fill darkgray -stroke dodgerblue -draw "rectangle 0,0 $width_minus1,$height_minus1" \
        -draw "line 0,0 $width_minus1, $height_minus1" \
        -draw "line 0,$height_minus1 $width_minus1,0" \
        -draw "line 0,$height_mid $width_minus1,$height_mid" \
        -draw "line $width_mid,0 $width_mid,$height_minus1" \
        -fill lightgray -stroke black -draw "text 0,0 '$dimension'"    draw_rect.gif 


