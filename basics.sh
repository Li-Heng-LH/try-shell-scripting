#!/bin/bash

# printf
# \t for tab, to align
# %04d to pad 0's to make a number into 4 digits
printf "Name:\t%s\nID:\t%04d\n" "LH" "58"

# date and printf
today=$(date +"%d-%m-%Y") #command substitution
time=$(date +"%H:%M:%S")
# -v causes the output to be assigned to the variable rather than being printed to the standard output
# \t\t because there are 2 %s
printf -v d "CUrrent user:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"
