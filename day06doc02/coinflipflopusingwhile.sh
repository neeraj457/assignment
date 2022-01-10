#!/bin/bash -x

heads=11
tails=11
a=0                  #initial value of flip flop head
c=0						#initial value of flip flop tail
n=0						#initial value of flip flop win head time
m=0						#initial value of flip flop win tail time

while [[ $n -le $heads && $m -le $tails ]]
do
	a=$((RANDOM%2))
   echo $a
   if [ $a -eq 1 ]
   then
		b=$(($b+1))
      ((n++))
      if [ $n -eq $heads ]
      then
          echo $n "Times Head"
          break
      fi

   else
      c=$(($c+1))
      ((m++))
      if [ $m -eq $tails ]
      then
           echo $m "Times Tail"
           break
      fi

   fi
done
