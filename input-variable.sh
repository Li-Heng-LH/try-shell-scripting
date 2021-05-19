#!/bin/bash

name=default
read -p "Enter name: " name
greeting=Hello,${name}!
echo $greeting
echo Hello,$name!
echo "Hello,$name!"
echo

echo "Enter a command: " 
read command
$command
echo

read -p "First property: "  first
read -p "Second property: " second
read -p "Third property: "  third
echo Executing TestProperties ...
javac TestProperties.java
java -DfirstProperty=$first -DsecondProperty=${second} -DthirdProperty=${third} TestProperties
rm TestProperties.class