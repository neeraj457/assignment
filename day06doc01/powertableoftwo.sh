#!/bin/bash -x

read -p "Enter a number" num
i=0;
for (( i=0; i<=$num; i++ ))
do
	table=$((2**$i))
	echo "2**$i= $table"
done
