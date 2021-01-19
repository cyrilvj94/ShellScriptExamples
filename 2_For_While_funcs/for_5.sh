#! /bin/bash
#Factorial of a number
read -p"Enter the number" num
fact=1
for((i=1;i<=num;i++))
do
	((fact*=i))
done
echo $num! = $fact
