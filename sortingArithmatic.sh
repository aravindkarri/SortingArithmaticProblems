#!/bin/bash -x

echo "Welcome to Sorting Arithmatic Problem"

read -p "Enter value for a: " a
read -p "Enter value for b: " b
read -p "Enter value for c: " c

declare -A dict

dict["n1"]=$(($a+$b*$c))
dict["n2"]=$(($a*$b+$c))
dict["n3"]=$(($c+$a/$b))
dict["n4"]=$(($a%$b+$c))

count=0
for ((i=1;i<=${#dict[@]};i++ ))
do
	arr[$((count++))]=${dict["n$i"]}
done

#Ascending order

for ((i=0;i<4;i++))
do
	for ((j=0;j<4;j++))
	do
		if [ ${arr[$i]} -lt ${arr[$j]} ]
		then
			temp=${arr[$i]}    #swapping
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "sorted array in Ascending order: " ${arr[@]}

