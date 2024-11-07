#!/bin/sh

count=${1:-11}

i=0
while [ $i -lt $count ]; do
	echo "hello world"
	i=$((i + 1))
done
