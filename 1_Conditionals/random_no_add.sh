#! /bin/bash
sum=0
for((i=1;i<=5;i++))
do
	rand_no=$((10 + (RANDOM%90) ))
	((sum+=rand_no))
done
echo sum: $sum
echo avg: $((sum/5))
