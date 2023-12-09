#!/bin/bash

generate_random_number() {
    echo $((RANDOM % 101)) 
}
printf "Kérek egy pozitív egész számot: " pozitiveszam
if [[ $pozitiveszam !=~ ^[1-9][0-9]*$ ]]; then
    printf "Ez nem pozitív egész szám."
fi
for ((i = 0; i < pozitiveszam; i++)); do
    random_number=$(generate_random_number)
    my_array[$i]=$random_number
done
min=$my_array[0]
max=$my_array[0]
minpoz=0
maxpoz=0
for ((i = 1; i < pozitiveszam; i++)); do
    if (($my_array[i] < $min)); then
        $min=$my_array[i]
        minpoz=$i
    fi
    if (($my_array[i] > $max)); then
        $max=$my_array[i]
        maxpoz=$i 
    fi
done
osszeg=0
for ((i = 0; i < pozitiveszam; i++)); do
    osszeg=$my_array[i]+$osszeg
done
atlag=$osszeg/$pozitiveszam
exit 0
