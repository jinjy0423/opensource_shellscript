#!/bin/sh

DB_FILE="DB.txt"

NAME=$1
PHONENUMBER=$2

#if [ ! -f "$DB_FILE" ]; then
#	echo "--my friends--" > "$DB_FILE"
#fi

echo "$NAME $PHONENUMBER" >> "$DB_FILE"
