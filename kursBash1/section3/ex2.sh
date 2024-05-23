#!/bin/bash

NAME=$1

if [ -f $NAME  ]
then
    	echo "{$NAME} is a regular file"
        exit 0
elif [ -d $NAME ]
then
    	echo "{$NAME} is a directory"
        exit 1
else
    	echo "{$NAME} is an other type of file"
        exit 2
fi
