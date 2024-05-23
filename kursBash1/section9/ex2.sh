#!/bin/bash

LINE_NUMBER=1

read -p "How many lines of /etc/passwd would you like to see? " NUM_LINES

while read -r LINE
do
    echo "$LINE"
    if [ "$LINE_NUMBER" -eq "$NUM_LINES" ]; then
        break
    fi
    ((LINE_NUMBER++))
done < /etc/passwd
