#! /bin/bash
#fucnction to check if a no is even or odd
function isEven
{
	if [ $(( $1 % 2)) -eq 0 ]
	then
		echo Even
	else
		echo Odd
	fi

}

#Check prime or composite
function isPrime
{
flag=0
for((i=2;i<$1;i++))
do
	if [ $(($1 % i)) -eq 0 ]
	then
		flag=1
		break
	fi

done
if [ $flag -eq 1 ]
then 
	echo Composite
else
	echo Prime

fi
}

read -p"Enter the option 1>even/odd 2>prime/composite and the number" option number

case $option in 
	1)echo $(isEven  $number);;
	2)echo $(isPrime $number);;
esac
