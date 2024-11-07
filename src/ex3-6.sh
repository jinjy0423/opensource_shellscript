#!/bin/sh

if [ ! -d "$1" ]; then
	mkdir "$1"
fi

cd "$1" || exit

for i in $(seq 0 4); do
	touch "file$i.txt"
done

mkdir "$1"

tar -cf "$1.tar" file0.txt file1.txt file2.txt file3.txt file4.txt

mv "$1.tar" "$1/"

cd "$1" || exit

tar -xf "$1.tar"

ls

ls -1 *.txt
