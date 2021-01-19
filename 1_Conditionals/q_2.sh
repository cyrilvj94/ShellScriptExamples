#! /bin/bash

#Reads day and month from the user and return true if it falls bw  20 march and 20 june

read -p"Enter the day and month" day month

if [ $month -gt 3 -a $month -lt 6 -a $day ]
then
	if [ $day -lt 31 ]
	then
		echo True
	fi
elif [ $month -eq 3 -a $day -gt 20 -a $day -le 31 ]
then
	echo True
elif [ $month -eq 6 -a $day -lt 20 ]
then
	echo True
else
	echo False
fi
