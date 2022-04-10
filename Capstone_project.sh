#!/usr/bin/bash

#program to automatically list out untouched downloaded files consuming space in a specified directory
size=$1
days=$2

echo -e "\nUntouched files of $size modified less than $days ago"
find Downloads1 -type f -size $1 -mtime $2
echo -e "\nDeleting untouched files"
find Downloads1 -type f -size $1 -mtime $2 -exec rm -f {} \;
echo "Done"

#Alternatively, this works also:
echo "Enter the size of the files to be found: "
read size
echo "Enter the days the files were last modified: "
read days
echo "Untouched files of $size modified less than $days ago"
find Downloads1 -type f -size $size -mtime $days
echo "Deleting untouched files"
find Downloads1 -type f -size $size -mtime $days -exec rm -f {} \;
echo "Done"

