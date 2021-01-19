#! /bin/bash
#Gambler problem
function simulate_coin_flip
{
echo $((RANDOM%2))
}

money=100
declare -a lst
lst[0]=TAILS
lst[1]=HEADS
while [ $money  ]
do
	if [ $money -eq 0 -o $money -eq 200 ]
	then
		echo Betting ended final money left $money
		break
	fi
	result=$(simulate_coin_flip)
	echo "Flipping coin : " ${lst[result]}
	case $result in
		0)((money--));;
		1)((money++));;
	esac
	echo Money left $money
done


