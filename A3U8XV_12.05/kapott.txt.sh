#!/bin/bash

if [ "$#" -ne 1 ]; then
    printf "Használat: '%s' <filenev>" "$0"
    exit 1
fi
filenev=$1
if [ ! -f "$filenev" ]; then
    printf "Hiba: File '%s' nem található.\n" "$filenev"
    exit 1
fi
tartalom=$(<"$filenev")
tartalom="${tartalom//happy/nem gondoltam a vizsgaidoszakra}"
printf "%s" "$tartalom" > out.txt
exit 0