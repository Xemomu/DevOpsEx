#!/bin/bash

read -p "Provide a name of file or directory: " NAME

if [ -f $NAME  ]
then
	echo "{$NAME} is a regular file"
	ls -l $NAME
elif [ -d $NAME ]
then
	echo "{$NAME} is a directory"
	ls -l $NAME
else
	echo "{$NAME} is an other type of file"
	ls -l $NAME
fi
