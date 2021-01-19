#! /bin/bash

read -p"1.Feet > Inches | 2.Inch > Feet | 3. Feet > Meter | 4. Meter > Feet " option
case $option in 
	1)
		read -p"Enter feet" num
		echo $num feets = $((num*12)) inches ;;
        2)
                read -p"Enter inches" num
                echo $num Inches = $((num/12)) feets;;
        3)
                read -p"Enter feet" num
                echo $num feets = $((num*3048/1000)) meters;;
        4)
                read -p"Enter meters" num
                echo $num meters "=" $((num*328084/100000)) feets;;

esac
