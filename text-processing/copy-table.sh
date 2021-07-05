#!/bin/bash

#help: https://unix.stackexchange.com/questions/180663/how-to-select-first-occurrence-between-two-patterns-including-them

# Take 1st table
awk '/##Table 2/ {exit} /##Table 1/ {f=1; next} f' old.txt > tmp.txt
# Take last table
sed '/##Total/,/ABC/!d;/ABC/q' old.txt >> tmp.txt

shortDash=$(echo $(printf '%0.s-' {1..89}))
longDash=$(echo $(printf '%0.s-' {1..129}))

echo $shortDash >> tmp.txt

sed "s/$longDash/$shortDash/g" tmp.txt > result.txt
rm tmp.txt