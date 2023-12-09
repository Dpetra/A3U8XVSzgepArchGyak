#!/bin/bash

read -p "Add meg a neved: " nev
filenev="nev_id_parok.txt"
if [ ! -f "$filenev" ]; then
    printf "Hiba: File '%s' nem található.\n" "$filenev"
    exit 1
fi
id=$(grep "$nev" "$filenev" | cut -d':' -f2)
if [ -z "$id" ]; then
    echo "Hiba: '$nev' nem található itt: $filenev."
    exit 1
fi
printf "A keresett név id-ja: '%s'" "$id"
exit 0