#!/bin/bash

read -p "Felhasználónév: " nev
read -p "Verzió: " verzio
read -p "Webhely: " webhely
json_adat="{Username: $nev\nVersion: $verzio\nSite: $webhely}"
echo $json_adat > config.yml
exit 0