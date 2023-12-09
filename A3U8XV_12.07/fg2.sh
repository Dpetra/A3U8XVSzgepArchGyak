#!/bin/bash

generate_random_number() {
    local N=${1:-5}
    local x=${2:-1}
    local y=${3:-90}
    for ((i = 0; i < N; i++)); do
        random_szam=$((RANDOM % (y - x + 1) + x))
        echo $random_szam
    done
}
generate_random_number 10 800 900
generate_random_number 15 -10 10
exit 0