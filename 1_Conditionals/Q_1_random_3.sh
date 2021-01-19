#! /bin/bash
#Read 5 random 3 digit valuues and then outputs max and min values

for((i=0;i<5;i++))
do
	arr_name[$i]=$((100 + (RANDOM%900) ))
done

max=${arr_name[0]}
min=${arr_name[0]}

for i in ${arr_name[@]}
do
echo $i
	if [ $i -lt $min ]
	then
		min=$i
	fi

	if [ $i -gt $max ]
	then
		max=$i
	fi
done
echo ${arr_name[@]}
echo max $max 
echo min $min
