#!/bin/bash -x

read -p "Enter a Number " num
fact=1;
for((i=1;i<=num;i++))
do
  fact=$((fact * i))
done
echo "factorial value" $fact
