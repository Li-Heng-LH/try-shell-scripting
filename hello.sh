#!/bin/bash
echo

# echo and variales
greeting="hello" #Cannot have spaces around =
echo '$greeting, world (planet)!'
echo "$greeting, world (planet)!"
echo

# command substitution
pwd_result=$(pwd)
echo $pwd_result
echo

# arithmetic operations
a=2
b=3
echo $((a+b))
echo $(($a+$b))
c=$((a*b))
echo $c
echo

# String manipulation
a="con"
b="cated"
c=$a$b
echo $a$b
echo $c
echo ${#c} # length of string

echo

# user input
# echo "Please enter name:"
# read name

# echo "Please enter password:"
# read -s password

# read -p "What is your favourite animal? " animal

# echo name: $name, pass: $password, animal: $animal 
# echo 

# ensure user response
read -p "Choose a word: " word
while [[ -z "$word" ]]; do
	read -p "Please type a word: " word
done
echo word: $word

