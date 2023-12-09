#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Összeg: 0"
else
 osszeg=0
 for arg in "$@"; do
    osszeg=$((osszeg + arg))
 done
    echo "Összeg: $osszeg"
fi
exit 0