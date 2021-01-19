#! /bin/bash
# powers of 2 till 256 is reached
read -p"Enter Number" limit
count=0
while [ $count -le $limit -a $((2**count)) -le 256 ]
do
	echo 2^$count = $((2**count))
	((count++))
done
