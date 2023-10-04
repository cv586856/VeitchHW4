#!/bin/bash

# Description:
# This script takes 4 command line arguments and performs the following tasks:
# 1. Sums the first three numbers.
# 2. Executes subtractMachine.sh where the first argument is the sum calculated in item 1,
#    and the second argument is the fourth command line argument provided to threeAmigos.sh.
#./threeAmigos.sh 5 10 15 7


# Check for the correct number of arguments
if [ "$#" -ne 4 ]; then
	    echo "Usage: $0 <num1> <num2> <num3> <num4>"
	        exit 1
fi

# Extract command line arguments
num1="$1"
num2="$2"
num3="$3"
num4="$4"

# Calculate the sum of the first three numbers
sum=$((num1 + num2 + num3))

# Print the sum
echo "The sum of $num1, $num2, and $num3 is $sum"

# Execute subtractMachine.sh with the calculated sum and the fourth argument
./subtractMachine.sh "$sum" "$num4"

