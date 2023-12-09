#!/bin/bash

random_number=$((RANDOM % (100 +1 ))
printf "A véletlenszerűen generált szám: " "$random_number"
for ((i = 0; i*i < random_number; i++)); do
    square=$((i i))
    echo $square
done
exit 0