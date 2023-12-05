#!/bin/bash

url="https://raw.githubusercontent.com/bbalage/BashExamples/master/assets/file1.txt"
wget "$url" -O file1.txt
if [ "$?" -ne 0 ]; then
    echo "Hiba: Nem sikerült letölteni a filet."
    exit 1
fi
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Z|a-z]{2,}\b" file1.txt > emails.txt
rm file1.txt
exit 0