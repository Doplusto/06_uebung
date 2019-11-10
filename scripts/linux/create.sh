#!/bin/sh

echo "Erstelle $1 Verzeichnisse mit Namen >dir#<"
echo "Erstlle jeweils $2 Dateien mit Name >datei#.txt<"

I=1
J=1
while [ $I -le $1 ]
do
    mkdir "dir$I"
    cd "dir$I"
    while [ $J -le $2 ]
    do
        echo "Script der FH Rosenheim 2019" > "datei$J.txt"
        J=$(( $J +1 ))
    done
    J=1
    cd ..
    I=$(( $I +1 ))
done