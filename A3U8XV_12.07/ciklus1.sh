#!/bin/bash

for ((i=0; i<=10; i++)); do
    echo $i
done
counter=0
while [ $counter -le 10 ]; do
    echo $counter
    ((counter++))
done
counter=0
until [ $counter -gt 10 ]; do
    echo $counter   
    ((counter++))
done