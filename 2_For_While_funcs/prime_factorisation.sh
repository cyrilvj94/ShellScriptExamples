#! /bin/bash

read -p"Enter the number" num
i=1
while [ $i -le $num ]
do
	count=0
	if [ $((num%i)) -eq 0 ]
	then
		j=1
		while [ $j -le $i ]
		do
			if [ $((i%j)) -eq 0 ]
			then
				count=$((count+1))
			fi
		j=$((j+1))
		done
		if [ $count -eq 2 ]
		then
			echo i
		fi
	fi
done
