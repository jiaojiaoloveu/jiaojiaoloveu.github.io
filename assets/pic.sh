#!/bin/sh
for file in ./pic/*
do 
    newfile="./thumbnail/$(basename $file)"
    if [ ! -f $newfile ]; then
        convert -resize 200x200 $file $newfile
        convert $file icon.png -gravity southeast -geometry +5+10 -composite $file
    fi
done
