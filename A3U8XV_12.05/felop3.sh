#!/bin/bash

LINK="https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
FILENEV="gtfs.zip"
KONYVTAR="GTFS"
LAKOHELY="638626"
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
cat $KONYVTAR/stop_times.txt | grep $LAKOHELY