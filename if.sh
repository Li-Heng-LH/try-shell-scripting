#!/bin/bash


# if syntax 1
a=5 # Note: cannot have spacings

if [ $a -gt 4 ]; then 
	echo $a is greater than 4!
else 
	echo $a is not greater than 4!
fi
######


# if syntax 2
b=2

if [ $b -gt 4 ]
then 
	echo $b is greater than 4!
else
	echo $b is not greater than 4!
fi
######


# checking regex
str="This is my 1 string!"
if [[ $str =~ [0-9]+ ]]
then 
	echo "There are numbers in the string: $str"
else
	echo "There are no numbers in the string: $str"
fi
######