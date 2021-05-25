#!/bin/bash


# while loop
echo while loop
i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i+=1))  # (()) tells interpreter that we are going to do math
done
echo
######

# until loop
echo until loop
j=0
until [ $j -ge 10 ]
do
	echo j:$j
	((j+=1))  # (()) tells interpreter that we are going to do math
done
echo
######


# for loop
echo for loop
for i in 1 2 3; do
	echo $i
done
echo
######

# looping through 1 to 10
for i in {1..10}; do
	echo $i
done
echo
######

# looping through 1 to 10
for ((i=0; i<5; i++))
do
	echo $i
done
echo
######

# looping through array
arr=("a" "b" "c")
for i in ${arr[@]}
do
	echo $i
done
echo
######

# looping with command substitution
for i in $(ls)
do
	echo "$i"
done
echo
######
