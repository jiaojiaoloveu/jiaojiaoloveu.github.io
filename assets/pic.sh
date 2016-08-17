#!/bin/sh
for file in ./pic/*
do 
    newfile="./thumbnail/$(basename $file)"
    newfile2="./markpic/$(basename $file)"
    if [ ! -f $newfile ]; then
        convert -resize 200x200 $file $newfile
    fi
    if [ ! -f $newfile2 ]; then
        convert $file icon.png -gravity southeast -geometry +5+10 -composite $newfile2
    fi
done
