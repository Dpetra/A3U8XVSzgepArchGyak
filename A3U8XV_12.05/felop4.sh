#!/bin/bash

read -p "Kérem a születési dátumot: " szd
if date -d "$szd" &> /dev/null; then
    aktualis_ev=$(date +"%Y")
    szuletesi_ev=$(date -d "$szd" +"%Y")
    eletkor=$((aktualis_ev - szuletesi_ev))
    echo "Életkorod: $eletkor."
else
    echo "Nem jó dátum: $szd"
    exit 1
fi
exit 0