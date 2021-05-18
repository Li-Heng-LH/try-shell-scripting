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
for a in 1 2 3; do
	echo $a
done
echo
######