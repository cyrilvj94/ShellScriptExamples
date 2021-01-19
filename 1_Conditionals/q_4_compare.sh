#! /bin/bash 

# Read 3 numbers and get the max and min of the evaluvated expressions
read -p"Enter the three numbers" num1 num2 num3

a=$((num1 + num2*num3))
b=$((num3 + num1/num2))
c=$((num1%num2 + num3))
d=$((num1*num2 + num3))
min=$a
max=$b
for i in $a $b $c $d
do
	if [ $i -lt $min ]
	then
		min=$i
	fi
	if [ $i -gt $max ]
	then
		max=$i
	fi

done
echo $a $b $c $d
echo min $min
echo max $max
