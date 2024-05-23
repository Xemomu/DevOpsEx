#!/bin/bash

LINE_NUMBER=1

while read -r LINE
do
    echo "${LINE_NUMBER}: ${LINE}"
    ((LINE_NUMBER++))
done < /etc/passwd
