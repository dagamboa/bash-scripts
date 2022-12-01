#!/bin/bash

#This script receives directory paths as arguments

directory_list=("$@")
for directory in "${directory_list[@]}"
do
    cd "$directory" || exit
    echo "Printing files from $directory"
    for file in *
    do
        [ -e "$file" ] || continue
        echo "$file"
    done
    echo
done
