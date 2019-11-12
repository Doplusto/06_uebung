#!/usr/bin/env bash

for f in ./dir*/*[1,3].txt; do
        sed -i 's/2018/2019/;s/FH/TH/' "$f"
done
