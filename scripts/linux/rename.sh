#!/usr/bin/env bash
for f in ./dir*/*; do rename "2.txt" "2.md" "$f"; done
