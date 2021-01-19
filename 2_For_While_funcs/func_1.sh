#! /bin/bash

#Unit conversion
function to_Farenheit
{
echo $`awk -v num=$1 'BEGIN{print (num*9/5) + 32}'`
}

function to_Celcius
{
echo $`awk -v num=$1 'BEGIN { print (num-32)*(5/9)}'`
}

read -p"1>deg to fareheit 2>fareheit to degree" option temp
case $option in 
	1)if [ $temp -le 100 -a $temp -ge 0 ];then echo  $temp degC ">" $(to_Farenheit $temp) degF ;else echo Enter temp bw 0 and 100; fi ;;
	2)if [ $temp -le 212 -a $temp -ge 32 ];then echo  $temp degF ">" $(to_Farenheit $temp) degC ;else echo Enter temp bw 32 and 212; fi ;;
 
esac
