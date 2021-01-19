#! /bin/bash -x 

read -p"Enter the the number" number
if [ $((number/10)) -eq 0 ]
then 
	echo Unit
elif [ $((number/100)) -eq 0 ]
then
	echo Tens
elif [ $((number/1000)) -eq 0 ]
then
	echo Hundreds
elif [ $((number/10000)) -eq 0 ]
then
	echo Thousands
elif [ $((number/100000)) -eq 0 ]
then
	echo Ten thousands
fi
