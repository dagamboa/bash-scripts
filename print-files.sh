#!/bin/bash

#This script receives a path as argument

path="$1"
echo "Printing files from $path"
files=$(ls "$path")
for file in $files
do
    echo "$file"
done