#!/bin/bash

read -p "Add meg a neved: " nev
read -p "Add meg a telefonszámod: " telefonszam
json_adat="{\"name\": \"$nev\", \"phone\": \"$telefonszam\"}"
echo $json_adat > A3U8XV.json
exit 0