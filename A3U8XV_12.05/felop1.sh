#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Használat: $0 <x> <y>" 
    exit 1
fi
x=$1
y=$2
terulet=$((x * y))
echo "A téglalap területe: $terulet"
exit 0