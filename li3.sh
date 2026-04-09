#!/bin/bash
# Prompt the user to enter a number
echo "Enter a number: "
read number

# Initialize the sum variable
sum=0

# Calculate the sum of digits using a loop
while [ $number -gt 0 ]; do
    digit=$(( number % 10 ))  # Get the last digit
    sum=$(( sum + digit ))     # Add the digit to sum
    number=$(( number / 10 ))   # Remove the last digit
done

echo "Sum of digits (using loops) is: $sum"
