#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Használat: $0 <x1> <y1> <x2> <y2>" 
    exit 1
fi
x1=$1
y1=$2
x2=$3
y2=$4
hossz=$((x2 - x1))
szelesseg=$((y2 - y1))
terulet=$((hossz * szelesseg))
echo "A téglalap területe: $terulet"
exit 0