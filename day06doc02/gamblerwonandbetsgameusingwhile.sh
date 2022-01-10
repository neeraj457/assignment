#!/bin/bash -x

rs=20;

win=50;
loss=0;
b=0;				#initial win time
c=0;				#initial loss time
while [[ rs -le $win && rs -ge $loss ]]
do
   a=$((RANDOM%2))
   if [ $a -eq 1 ]
	then
      b=$(($b+1))
      ((rs++))
		if [ $rs -eq 50 ]
      then
			echo "rs $rs, won money, $b win times $c loss time"
			break
      fi
   else
		c=$(($c+1))
      ((rs--))
		if [ $rs -eq 0 ]
      then
			echo "rs $rs, loss money, $b win time, $c loss time"
			break
		fi
	fi
done
