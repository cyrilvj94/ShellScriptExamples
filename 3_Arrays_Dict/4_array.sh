#! /bin/bash
#integers adding to zero

read -p"Enter the number of elements" n
declare -a array
for((i=0;i<n;i++))
do
	read -p"Enter the element in  $i"  num
	array[$i]=$num
done

echo ${array[@]}
for((i=0;i<((n-2));i++))
do
	for((j=$((i+1));j<$((n-1));j++))
	do
		for((k=$((j+1));k<n;k++))
		do
			if [ $((${array[i]} + ${array[j]} + ${array[k]})) -eq 0 ]
			then
					echo ${array[i]}  ${array[j]}  ${array[k]}
			fi
		done
	done
done
	
