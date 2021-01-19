#! /bin/bash
# n th harmonic
read -p"Enter Limit" limit
expression=" Hn = "
sum=0
for((num=1;num<=limit;num++))
do
	temp=`awk -v no=$num 'BEGIN {print 1/no }'`
	sum=`awk -v sum=$sum 'BEGIN {print sum+temp}'`
	if [ $num -eq $limit ]
	then
		expression+=" 1/$num "
	else
		expression+=" 1/$num + "
	fi
done
echo $expression
awk -v sum=$sum 'BEGIN {print sum}'
