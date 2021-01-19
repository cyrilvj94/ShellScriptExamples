#! /bin/bash -x 
 
#Check leap year or not
read -p"Enter the year" year
if [ $((year%4)) -eq 0 ]
then
	if [ $((year%100)) -eq 0 ]
	then
		if [ $((year%400)) -eq 0 ]
		then
			echo Leap year
		else
			echo Not leap year
		fi
	else
		echo Leap year
	fi
else
	echo Not leap year
fi

