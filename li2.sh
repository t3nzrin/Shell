#!/bin/bash
echo "Enter a number: "
read number

# Initialize variables
reverse=0
original=$number

# Reverse the number
while [ $number -ne 0 ]; do
    remainder=$(( number % 10 ))  # Get the last digit
    reverse=$(( reverse * 10 + remainder ))  # Build the reversed number
    number=$(( number / 10 ))  # Remove the last digit from the original number
done

# Check if the original number is equal to the reversed number
if [ $original -eq $reverse ]; then
    echo "$original is a palindrome."
else
    echo "$original is not a palindrome."
fi
