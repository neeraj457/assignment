#!/bin/bash -x
read -p "enter number" num

for((i=1; i<=num; i++))
do
	k=0
	for((j=2; j<=i-1; j++))
	do
		if [ $((i%j)) -eq 0 ]
		then
			k=1
			break
		fi
	done
	if [ $k -eq 0 ]
	then
		echo "$i is a prime number"
	fi
done
