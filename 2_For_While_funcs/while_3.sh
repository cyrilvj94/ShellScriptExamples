#! /bin/bash
#flip coin till h or t occurs 11 times
result=$((RANDOM%2))
count_head=0
count_tail=0
declare -A dict
dict[0]=TAILS
dict[1]=HEADS
while [ $count_head ]
do
	case $count_head  in 
		11)echo HEAD WON ; echo HEAD COUNT : $count_head TAIL COUNT : $count_tail;break; ;;
	esac
	case $count_tail in 
		11) echo TAIL WON; echo HEAD COUNT $count_head  TAIL COUNT  $count_tail;break; ;;
	esac
	
	result=$((RANDOM%2))
	echo flipped coin result :  ${dict[$result]}
	if [ $result -eq 0 ]
	then
		((count_tail++))
	else
		((count_head++))
	fi
done
