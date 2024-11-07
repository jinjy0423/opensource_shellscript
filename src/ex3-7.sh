#!/bin/sh

parent_folder=$1
mkdir -p "$parent_folder"

file_names="file0 file1 file2 file3 file4"

for file in $file_names; do
	touch "$1/$file.txt"

	subfolder="$1/$file"
	mkdir -p "$subfolder"

	ln -s "../$file.txt" "$subfolder/"
done
