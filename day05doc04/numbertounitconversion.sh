#!/bin/bash -x
read -p "enter a number like (1,10,100,1000,...)" num

if [ $num -eq 1 ]
then
	echo "Unit"
elif [ $num -eq 10 ]
then
	echo "Ten"
elif [ $num -eq 100 ]
then
   echo "Hundred"
elif [ $num -eq 1000 ]
then
   echo "Thousands"
elif [ $num -eq 10000 ]
then
   echo "Ten Thousands"
elif [ $num -eq 100000 ]
then
   echo "Lakh"
elif [ $num -eq 1000000 ]
then
   echo "Ten Lakh"
elif [ $num -eq 10000000 ]
then
   echo "corer"
else
	echo "not in the list"
fi
