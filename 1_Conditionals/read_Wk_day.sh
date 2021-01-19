#! /bin/bash

read -p"Enter the day" day
if [ $day -eq 1 ]
then
	echo "Sunday"
elif [ $day -eq 2 ]
then
	echo "Monday"
elif [ $day -eq 3 ]
then
        echo "Tuesday"
elif [ $day -eq 4 ]
then
        echo "Wednesday"
elif [ $day -eq 5 ]
then
        echo "Thrusday"
elif [ $day -eq 6 ]
then
        echo "Friday"
else
	echo "Saturday"
fi

