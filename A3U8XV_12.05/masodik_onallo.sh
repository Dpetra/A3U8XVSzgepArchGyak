#!/bin/bash

filenev="people.csv"
if [ ! -f "$filenev" ]; then
    printf "Hiba: File '%s' nem található.\n" "$filenev"
    exit 1
fi
tartalom=$(<"$filenev")
tartalom="${tartalom//gmail.com/citromail.hu}"
printf "%s" "$tartalom" > A3U8XV_people.csv
exit 0