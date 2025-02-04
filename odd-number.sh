#!/bin/bash

# Read the input integer
n=$1

# # Check if the input is a valid integer
# if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
#   echo "Error: The input must be an integer."
#   exit 1
# fi

# Check if the number is odd or even
if [ $((n % 2)) -eq 1 ]; then
  echo "$n is an odd number."
else
  echo "$n is an even number."
fi