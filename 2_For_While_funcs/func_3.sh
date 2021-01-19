#! /bin/bash
# Check if a number is prime and paliedrome
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
function isPrime
{
flag=0
for((i=2;i<$1;i++))
do
        if [ $((num%i)) -eq 0 ]
        then
                flag=1;break
        fi
done
if [ $flag -eq 0 ]
then
	echo Prime
else
	echo Not prime
fi

}
read -p"Enter number" num
echo $num ":"  $(isPaliendrome $num) , $(isPrime $num)
