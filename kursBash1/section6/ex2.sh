#!/bin/bash

shopt -s nullglob

read -p "Please enter a file extension: " EXTENSION

read -p "Please enter a file prefix: (Press ENTER for $(date +%Y-%m-%d)) " PREFIX
PREFIX=${PREFIX:-$(date +%Y-%m-%d)}

for FILE in *."$EXTENSION"; do
    NEWNAME="${PREFIX}-${FILE}"
    echo "Renaming $FILE to $NEWNAME."
    mv "$FILE" "$NEWNAME"
done

shopt -u nullglob

