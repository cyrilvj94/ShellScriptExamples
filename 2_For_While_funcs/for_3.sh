#! /bin/bash
# Prime number check

read -p"Enter number" num
flag=0
for((i=2;i<num;i++))
do
	if [ $((num%i)) -eq 0 ]
	then
		flag=1;break
	fi
done
case $flag in 
	1)echo Composite;;
	0)echo Prime;;
esac
