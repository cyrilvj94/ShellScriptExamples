#! /bin/bash
#Take a range from 0 to 100 and print repeating digits

declare -a array
read -p"Enter the range between 1 and 100" lowerLimit upperLimit
for((i=$lowerLimit;i <= $upperLimit;i++))
do
	if [ $((i%10)) -eq $((i/10)) ]
	then
		array[i]=$i
	fi
done

echo ${array[@]}
