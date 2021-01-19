#! /bin/bash
#find prime factors of a number
read -p"Enter the number" num
count=0
flag=0
declare -a array
for((i=2;i<$input;i++))
do
	if [ $((input%i)) -eq 0 ]
	then
		factor=$i
	for((j=2;j<=$((factor/2));j++))
	do
		flag=0
		if [ $((factor%j)) -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag -eq 0]
	then
		array[$((i-2))]=$factor
		count=1
	fi
	fi
done
echo ${array[2]}
