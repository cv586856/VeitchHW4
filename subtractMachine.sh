#!/bin/bash

# Description:
# This script takes 2 command line arguments and performs the following tasks:
# 1. Subtracts the smaller from the larger and then prints out the difference to stdout.
# 2. Counts down from the difference to 1 while printing each count to stdout.
# ./subtractMachine.sh 10 5


# Check for the correct number of arguments
if [ "$#" -ne 2 ]; then
	    echo "Usage: $0 <number1> <number2>"
	        exit 1
fi

# Extract command line arguments
num1="$1"
num2="$2"

# Calculate the absolute difference between the two numbers
if [ "$num1" -gt "$num2" ]; then
	    difference="$((num1 - num2))"
    else
	        difference="$((num2 - num1))"
fi

# Print the difference
echo "The difference between $num1 and $num2 is $difference"

# Count down from the difference to 1 and print each count
echo "Counting down from $difference to 1:"
while [ "$difference" -gt 0 ]; do
	    echo "$difference"
	        difference="$((difference - 1))"
	done

	echo "Script completed successfully."

