#!/bin/bash

RANDOM_NUMBER=$RANDOM

echo "Random number: $RANDOM_NUMBER"

logger -p user.info "Generated random number: $RANDOM_NUMBER"
