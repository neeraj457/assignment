#!/bin/bash -x
echo "Select unit conversation "
echo "1 for Feet to Inch"
echo "2 for Feet to Meter"
echo "3 for Inch to Feet "
echo "4 for Meter to Feet"
read -p "select conversion " num
read -p "Enter Length " num1

case $num in
	1)
	feet=$num1
	inch=$((feet*12))
	echo "Inch : $inch"
	;;
	2)
   feet=$num1
   meter=$((feet*1000/3281))
   echo "Meter : $meter"
	;;
	3)
   inch=$num1
   feet=$((inch/12))
   echo "Feet : $feet"
	;;
	4)
   meter=$num1
   feet=$(((meter*3281)/1000))
   echo "Feet : $feet"
	;;
	*)
	echo "Out Of selection"

esac

