#! /bin/bash
declare -a keys
declare -A dict
read -p"Enter the number"  limit
for((i=0;i<limit;i++))
do
	read -p"Enter the key $i" key 
	keys[$i]=$key
done

for key in ${keys[@]}
do
	read -p"Enter value for the  key $key" value
	dict[$key]=$value
done
echo ${!dict[@]}
echo ${dict[@]}
