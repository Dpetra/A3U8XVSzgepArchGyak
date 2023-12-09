#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Használat: $0 <x> <y>" 
    exit 1
fi
x=$1
y=$2
if [[ $x !=~ ^[+-]?[0-9]*.?[0-9]+$ ]]; then
    printf "Az x nem lebegőpontos."
    exit 1
fi
if [[ $y !=~ ^[+-]?[0-9]*.?[0-9]+$ ]]; then
    printf "Az y nem lebegőpontos."
    exit 1
fi
terulet=$((x * y))
echo "A téglalap területe: $terulet"
exit 0