#!/bin/zsh

for file in *.zip
  do
    FILENAME=$( echo $file | sed s/.zip// )
    ICAO=$( echo $file | sed s/_Scenery_Pack.zip// )
    unzip $file
    cd $FILENAME/"Earth nav data"
    mv apt.dat ../../airports/$ICAO.dat
    cd ../..
    trash $FILENAME
  done

trash ./*zip
