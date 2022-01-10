#!/bin/bash -x
arr=()
i=0
n=0
while [ $i -lt 100 ]
do
	a=$(($i%10))
	b=$(($i/10))
	if [ $a -eq $b ]
	then
		arr[$n]=$i
		n=$(($n+1))
	fi
	i=$(($i+1))
done
echo ${arr[@]}
