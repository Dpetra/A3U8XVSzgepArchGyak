#!/bin/bash

LINK="https://gtfs.kti.hu/public-gtfs/volanbusz_gtfs.zip"
FILENEV="gtfs.zip"
KONYVTAR="GTFS"
LAKOHELY="22206_"
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