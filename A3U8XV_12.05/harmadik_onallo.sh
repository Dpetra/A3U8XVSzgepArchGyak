#!/bin/bash

filenev="people.csv"
if [ "$#" -ne 1 ]; then
    printf "Használat: '%s' <nev>" "$0"
    exit 1
fi
if [ ! -f "$filenev" ]; then
    printf "Hiba: File '%s' nem található.\n" "$filenev"
    exit 1
fi
nev=$1
birthdate=$(grep "$nev" "$filenev" | cut -d';' -f2)
if [ -z "$birthdate" ]; then
    echo "Hiba: '$search_name' nem található itt: $filenev."
    exit 1
fi
aktualis_ev=$(date +"%Y")
szuletesi_ev=$(date -d "$birthdate" +"%Y")
eletkor=$((aktualis_ev - szuletesi_ev))
echo "$nev életkora: $eletkor."
exit 0