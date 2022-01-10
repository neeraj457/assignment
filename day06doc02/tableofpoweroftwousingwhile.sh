#!/bin/bash -x
read -p "enter a number : " num
n=1
while [ $n != $num ]
do
   a=$((2**$n))
   if [ $a -le 265 ]
	then
      echo "2**$n = " $a
		if [ $a -eq 256 ]
		then
			echo " reached till 256 "
			break
		fi
	fi
	((n++))
done
