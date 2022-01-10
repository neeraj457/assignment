#!/bin/bash -x
N=5

i=1
max=0
min=0

while [ $i -le $N ]
do
  num=$((RANDOM%1000));
  len=$(($(echo $num | wc -m)-1))
  echo "len" $len
  if [ $len -eq 3 ]
  then
      echo "random $i "$num
      if [ $i -eq 1 ]  #set first number as max
      then
          max=$num
          min=$num

      else         
          if [ $num -gt $max ]
          then
          max=$num
          fi

          if [ $num -lt $min ]
          then
          min=$num
          fi

      fi
      i=$((i + 1))  #increment i by 1
  else
      echo "2 digit number $num"
  fi
done
echo " maximum " $max
echo " minimum " $min






