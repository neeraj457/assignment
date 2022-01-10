#!/bin/bash -x
read -p "Enter a number a: " a
read -p "Enter a number b: " b
read -p "Enter a number c: " c

num1=$((a+b*c))
num2=$((a%b+c))
num3=$((c+a/c))
num4=$((a*b+c))

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ] && [ $num1 -gt $num4 ]
then
	echo "Max number (a+b*c) $num1"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ]
then
   echo "Max number (a%b+c) $num2"
elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ] && [ $num3 -gt $num4 ]
then
   echo "Max number (c+a/c) $num3"
else
	echo "Max number (a*b+c) $num4"
fi

if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ] && [ $num1 -lt $num4 ]
then
   echo "Min number (a+b*c) $num1"
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ] && [ $num2 -lt $num4 ]
then
   echo "Min number (a%b+c) $num2"
elif [ $num3 -lt $num1 ] && [ $num3 -lt $num2 ] && [ $num3 -lt $num4 ]
then
   echo "Min number (c+a/c) $num3"
else
   echo "Min number (a*b+c) $num4"
fi

