#!/bin/bash

log_message() {
  local MESSAGE=$1
  logger -i -t randomly -p user.info "$MESSAGE"
}

for i in {1..3}
do
  RANDOM_NUMBER=$RANDOM
  echo "Random Number $i: $RANDOM_NUMBER"
  log_message "Generated random number $i: $RANDOM_NUMBER"
done

