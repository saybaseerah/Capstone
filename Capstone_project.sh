#!/usr/bin/bash

#program to automatically list out untouched downloaded files consuming space in a specified directory
size=$1
days=$2

read -p "Please specify the directory containing your files: " directory
echo -e "\nFinding and deleting untouched files in $directory of $size modified $days ago"
find $directory -type f -size $1 -mtime $2 -exec rm -f {} \;
echo "Done"

#Alternatively, this works also:

read -p "Please specify the name of your directory: " name
echo "Enter the size of the files (in MB) to be found: "
read size
echo "Enter the days the files were last modified: "
read days
echo "Finding and deleting untouched files in $name of $size modified $days ago"
find $name -type f -size $size -mtime $days -exec rm -f {} \;
echo "Done"
