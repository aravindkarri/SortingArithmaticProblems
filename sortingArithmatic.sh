#!/bin/bash -x

echo "Welcome to Sorting Arithmatic Problem"
read -p "Enter value for a: " a
read -p "Enter value for b: " b
read -p "Enter value for c: " c

result=$(($a+$b*$c))
echo $result
