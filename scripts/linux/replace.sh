#!/bin/sh

for FILE in ./* ./**/*1* ./**/*3*
do
    if [ ! -d $FILE ]
    then
        echo $FILE
        sed -i 's/2019/2020/g' $FILE
        sed -i 's/FH/TH/' $FILE
    fi
done