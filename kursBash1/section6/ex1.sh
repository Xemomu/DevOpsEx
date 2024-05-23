#!/bin/bash

shopt -s nullglob

DATE=$(date +%Y-%m-%d)
FILES=*.jpg

if [ -z "$FILES" ]; then
    echo "No .jpg files to rename."
    exit 0
fi

for FILE in $FILES; do
    NEWNAME="${DATE}-${FILE}"
    echo "Renaming $FILE to $NEWNAME."
    mv "$FILE" "$NEWNAME"
done

shopt -u nullglob

