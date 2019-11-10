#!/bin/sh

for FILE in ./* ./**/*2*
do
    if [ ! -d $FILE ]
    then
        echo $FILE
        mv -v "$FILE"  "${FILE%.txt}.md"
    fi
done