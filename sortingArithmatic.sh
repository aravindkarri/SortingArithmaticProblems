#!/bin/bash -x

echo "Welcome to Sorting Arithmatic Problem"

read -p "Enter value for a: " a
read -p "Enter value for b: " b
read -p "Enter value for c: " c

n1=$(($a+$b*$c))
n2=$(($a*$b+$c))

echo $n2
