#! /bin/bash
#sort the elements of array and find second max and min

function generate_random
{
echo $((100 + RANDOM%900))
}

#function to sort array
function sortArray
{
array=$1
n=${#array[@]}
for((i=0;i<$n;i++))
do
	for((j=$i;j<$n;j++))
	do
		if [ ${array[i]} -gt ${array[j]} ]
		then
			#swap
			temp=${array[i]}
			array[$i]=${array[j]}
			array[$j]=$temp
		fi
	done
done

echo ${array[@]}

}
read -p"No of elements needed in the array" n
declare -a array
for((i=0;i<n;i++))
do
	array[i]=$(generate_random)
done
echo Original Array ${array[@]}
sorted=$(sortArray $array)
echo Sorted Array ${sorted[@]}
echo Second Min ${sorted[1]}
echo Second Max ${sorted[8]}
