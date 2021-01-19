#! /bin/bash  
# find max no occured in die

#generate random number
function simulateDieroll
{
echo $((1 + RANDOM%6))
}
function findMax
{
dict=$1
max=1
for((i=1;i<7;i++))
do
	if [ ${dict[$i]} -gt ${dict[$max]} ]
	then
		max=$i
	fi
done
echo $max ${dict[$max]}
}

function findMin
{
dict=$1
min=1
for((i=1;i<7;i++))
do
        if [ ${dict[$i]} -lt ${dict[$min]} ]
        then
                min=$i
        fi
done
echo $min ${dict[$min]}
}

declare -A dict
for i in 1 2 3 4 5 6
do
	dict[$i]=0 #Initialize count of each no to 0
done
count=1
while [ $count -ne 0 ]
do
	result=$(simulateDieroll)
	dict[$result]=$((dict[$result]+1))

	for((i=1;i<7;i++))
	do
		if [ ${dict[$i]} -eq 10 ]
		then
			count=0
			break
		fi
	done
done

for((i=1;i<7;i++))
do
	echo $i : ${dict[$i]}
done

echo Maximum $(findMax dict)
echo Minimum $(findMin dict)
