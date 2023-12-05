#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Használat: $0 <szám1> <szám2>"
    exit 1
fi
szam1=$1
szam2=$2
osszeg=$((szam1 + szam2))
kulonbseg=$((szam2 - szam2))
szorzat=$((szam1 * szam2))
if [ "$szam2" -ne 0 ]; then
    osztas=$((szam1 / szam2))
    maradek=$((szam1 % szam2))
else
    osztas="Hiba: Osztás nullával"
    maradek="Hiba: Maradekos osztás nullával"
fi
echo "Összeg: $osszeg"
echo "Különbség: $kulonbseg"
echo "Szorzat: $szorzat"
echo "Osztás: $osztas"
echo "Maradék: $maradek"
exit 0