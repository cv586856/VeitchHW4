#!/bin/bash

#This is Problem 1. This script changes the cpu freq to 600MHZ displays the information for the cpu. It then stores /home/debian into the variable location and displays the number of items inside of location. This scipt is available in all directories

sudo cpufreq-set -c 0 -f 600MHz

cpufreq-info

location="/home/debian"

echo " $location"

items=$(ls | wc -l)

echo "Number of items in the current working directory: $items"

PATH=$PATH:$HOME/CPE_422/

export PATH
