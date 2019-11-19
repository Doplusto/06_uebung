#!/usr/bin/env bash

echo "Erstelle $1 Verzeichnisse mit Namen >dir#<"
echo "Erstlle jeweils $2 Dateien mit Name >datei#.txt<"

for i in $(seq 1 "$1"); do
        mkdir ./dir"$i"
        for j in $(seq 1 "$2"); do
                echo "Script der FH Rosenheim 2018" > ./dir"$i"/datei"$j".txt
        done
done   
