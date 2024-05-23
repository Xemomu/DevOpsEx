#!/bin/bash

file_count(){
	local NUMBER_OF_FILES=$(ls -1 | wc -l)
	echo "There are $NUMBER_OF_FILES files in the working directory"
}
file_count
