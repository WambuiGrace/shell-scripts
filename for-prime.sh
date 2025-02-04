#!/bin/bash

# Read the input 
n=$1

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