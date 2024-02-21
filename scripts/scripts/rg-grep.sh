#!/bin/bash

pattern="$1"
filter="${2:-.}"

echo "Files found:"
rg -l "$pattern" | grep "$filter" | tr " " "\n"
echo

read -n 1 -p "Press Enter to open in nvim"

rg -l "$pattern" | grep "$filter" | xargs nvim
