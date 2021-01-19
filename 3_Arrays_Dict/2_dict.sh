#! /bin/bash
#Generate birth month

#dict with int values 1 to 24vand keys ranging from jan  92 to dec 93
#Generate random numbers bw 1 and 24
function generateRandom
{
echo $((1 + RANDOM%24))
}
#Another dict with key 1 to 24 and occurence of each month
declare -A dict
for((i=1;i<25;i++))
do
	dict[$i]=0
done

for((i=1;i<51;i++))
do
	no=$(generateRandom)
	dict[$no]=$((dict[$no]+1))
done 
read -p"Enter the month" month
for((i=1;i<25;i++))
do
	echo $i ":" ${dict[$i]}
done
count=$((${dict[$month]}+${dict[$((month+12))]}))
echo no of people born $month in $count
