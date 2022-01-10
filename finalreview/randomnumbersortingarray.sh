#!/bin/bash -x
i=1
max=0
min=0
num=10

while [ $i -le $num ]
do
	random[$i]=$((RANDOM%1000));
	len=$(($(echo ${random[i]} | wc -m)-1))
	echo "array random numbers"${random[@]}
	arraynum=${random[i]}
   if [ $len -eq 3 ]
   then
      echo "random $i " $arraynum
      if [ $i -eq 1 ]
      then
          max=$arraynum
          min=$arraynum

      else
          if [ $arraynum -gt $max ]
          then
          max=$arraynum
          fi

          if [ $arraynum -lt $min ]
          then
          min=$arraynum

          fi

      fi
      i=$((i + 1))
  else
      echo "2 digit number ${num[i]}"
  fi

done
echo " maximum " $max
echo " minimum " $min

