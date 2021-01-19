#! /bin/bash
#Print 2**n

read -p"Enter Limit" limit
count=0
for num in $(seq 0 $limit)
do
	echo 2 ^ $num = $((2**$num))
done

