#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
  echo "Error: Please provide an integer as a parameter."
  exit 1
fi

# Read the input 
n=$1

# Input == valid positive integer
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -lt 2 ]; then
  echo "Error: The input must be a positive integer greater than or equal to 2."
  exit 1
fi

# Function: Number == prime number
is_prime() {
  local num=$1
  for (( i=2; i*i<=num; i++ )); do
    if [ $((num % i)) -eq 0 ]; then
      return 1 
    fi
  done
  return 0 
}

# Loop through numbers from 2 to n and print prime numbers
for (( num=2; num<=n; num++ )); do
  if is_prime "$num"; then
    echo "$num"
  fi
done