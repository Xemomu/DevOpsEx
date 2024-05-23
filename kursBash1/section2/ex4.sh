#!/bin/bash

SHADOW_PATH="/etc/shadow"

if [ -e $SHADOW_PATH ]
then
	echo "Shadow passwords are enabled."
fi
if [ -w $SHADOW_PATH ]
then
	echo "You have permissions to edit /etc/shadow."
else
	echo "You do NOT have permissions to edit /etc/shadow."
fi
