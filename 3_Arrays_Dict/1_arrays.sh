#! /bin/bash
#find 2nd largest and 2nd min no from 10 random nos

#Generate Random numbers
function generateRandom3_digit
{
echo $((100 + RANDOM % 900))
}

#find second Minimum
function findSecondMin
{
array=$1
min=${array[0]}
secondMin=${array[1]}
for((i=0;i<10;i++))
do
	if [ ${array[i]} -lt $min ]
	then
		secondMin=$min
		min=${array[i]}

	elif [ ${array[i]} -lt $secondMin -a ${array[i]} -ne $min ]
	then
		secondLargest=${array[i]}
	fi
done
echo $secondMin
}

#find second largest
function findSecondMax
{
array=$1
largest=${array[0]}
secondLargest=${array[1]}
for((i=0;i<10;i++))
do
	if [ ${array[i]} -gt $largest ]
	then
		secondLargest=$largest
		largest=${array[i]}
	elif [ ${array[i]} -gt $secondLargest -a  ${array[i]} -ne $largest ]
	then
		secondLargest=${array[i]}
	fi
done
echo $secondLargest

}



declare -a array
for((i=0;i<10;i++))
do
        array[i]=$(generateRandom3_digit)
done

echo ${array[@]}
echo second largest $(findSecondMax $array)
echo second Minimum $(findSecondMin $array)
