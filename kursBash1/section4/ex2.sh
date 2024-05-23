#!/bin/bash

file_count() {
  local DIR=$1
  local NUMBER_OF_FILES=$(ls -1 $DIR | wc -l)
  echo $DIR:
  echo $NUMBER_OF_FILES
}

file_count "/etc"
file_count "/var"
file_count "/usr/bin"


