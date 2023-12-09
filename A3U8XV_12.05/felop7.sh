#!/bin/bash

LINK="https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
FILENEV="gtfs.zip"
KONYVTAR="GTFS"
read -p "Add meg a lakóhelyed: " lakhely
if [ -e $FILENEV ]
then
    rm $FILENEV
fi 
wget $LINK -q -O $FILENEV
if [ -d $KONYVTAR ]
then
    rm $KONYVTAR/* 
fi 
unzip -q $FILENEV -d $KONYVTAR
LAKOHELY=$(grep "$lakhely" "$KONYVTAR/stops.txt" | cut -d',' -f1)
if [ -z "$LAKOHELY" ]; then
    echo "Hiba: '$lakhely' nem található."
    exit 1
fi
cat $KONYVTAR/stop_times.txt | grep $LAKOHELY
exit 0