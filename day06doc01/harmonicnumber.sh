#!/bin/bash -x
read -p "Enter a number : " num
i=0;
harmonicnumber=0
for (( i=1; i<=$num; i++ ))
do
	harmonic=$(echo | awk "BEGIN { print 1/$i }")
	harmonicnumber=$(echo | awk "BEGIN { print $harmonicnumber+$harmonic } ")
	echo "Harmonic number of $num number: $harmonicnumber"
done
