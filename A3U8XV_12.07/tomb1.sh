#!/bin/bash

generate_random_number() {
    echo $((RANDOM % 100)) 
}
for ((i = 0; i < 10; i++)); do
    random_number=$(generate_random_number)
    my_array[$i]=$random_number
done
echo "Eredeti tömb:"
echo "${my_array[@]}"
for ((i = 0; i < 10; i++)); do
    ((my_array[i]++))
done
echo "Minden elemhez hozzáadtunk 1-et:"
echo "${my_array[@]}"