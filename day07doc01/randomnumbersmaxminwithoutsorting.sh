#!/bin/bash -x
N=10

i=1
max=0
min=0

while [ $i -le $N ]
do
	num[$i]=$((RANDOM%1000));
	len=$(($(echo ${num[i]} | wc -m)-1))
	echo "len" $len
	echo "random numbers in array"${num[@]}
	a=${num[i]}
	echo $a
   if [ $len -eq 3 ]
   then
      echo "random $i " $a
      if [ $i -eq 1 ]  #set first number as max
      then
          max=$a
          min=$a

      else             
          if [ $a -gt $max ]
          then
          max=$a
          fi

          if [ $a -lt $min ]
          then
          min=$a

          fi

      fi
      i=$((i + 1))  #increment i by 1
  else
      echo "2 digit number ${num[i]}"
  fi

done
echo " maximum " $max
echo " minimum " $min
