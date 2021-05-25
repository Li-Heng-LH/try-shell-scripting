#!/bin/bash

# Call this script with at least 3 parameters
echo "First parameter is $1"
echo "Second parameter is $2"
echo "Third parameter is $3"

# call this script with one two "three four"
for a in "$*"; do
	echo $a
done

for a in "$@"; do
	echo $a
done