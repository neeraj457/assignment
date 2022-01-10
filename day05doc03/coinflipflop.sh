#!/bin/bash -x

num=$((RANDOM%2))
if [ $num -eq 0 ]
then
	echo "HEADS"
else
	echo "TAILS"
fi
