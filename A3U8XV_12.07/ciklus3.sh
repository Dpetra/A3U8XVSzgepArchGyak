#!/bin/bash

printf "Kérek egy pozitív egész számot: " pozitiveszam
if [[ $pozitiveszam !=~ ^[1-9][0-9]*$ ]]; then
    printf "Ez nem pozitív egész szám."
fi
if [[$pozitiveszam -lt 2]]; then
    printf "Ez nem prím szám."
    exit 1
fi
for ((i = 2; i*i <= pozitiveszam; i++)); do
        if [ $((pozitiveszam % i)) -eq 0 ]; then
            printf "Ez nem prím szám."
            exit 1
        fi
    done
printf "Ez prím szám"
exit 0