#! /bin/bash
#Check if palendrome or not
function isPaliendrome
{
temp=$1
rev_num=0
while [ $temp -gt 0 ]
do
	digit=$((temp%10))
	rev_num=$((rev_num*10+digit))
	temp=$((temp/10)) 
done
if [ $1 -eq $rev_num ]
then
	echo Paliendrom
else
	echo Not Paliendrome
fi

}
read -p"Enter Number" num1 num2
echo $num1 ":" $(isPaliendrome $num1)
echo $num2 ":" $(isPaliendrome $num2)
