#! /bin/bash
# Prime number check
declare -a prime_nos
read -p"Enter Limits" lower_limit upper_limit

if [ $lower_limit -eq 0 -o $lower_limit -eq 1 ]
then
        lower_limit=2
fi

for((num=lower_limit;num<=upper_limit;num++))
do
        flag=0
        for((i=2;i<num;i++))
        do
                if [ $((num%i)) -eq 0 ]
                then
                        flag=1;break
                fi
        done


        case $flag in
                0)prime_nos[index]=$num;((index++)) ;;
        esac
done
echo ${prime_nos[@]}
#! /bin/bash 
# Prime number check
declare -a prime_nos
read -p"Enter Limits" lower_limit upper_limit

if [ $lower_limit -eq 0 -o $lower_limit -eq 1 ]
then
	lower_limit=2
fi

for((num=lower_limit;num<=upper_limit;num++))
do
	flag=0
	for((i=2;i<num;i++))
	do
	        if [ $((num%i)) -eq 0 ]
        	then
                	flag=1;break
        	fi
	done


	case $flag in
        	0)prime_nos[index]=$num;((index++)) ;;
	esac
done
echo ${prime_nos[@]}
