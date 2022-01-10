#!/bin/bash -x
echo “Enter the limit:”
read Range
echo “Enter the numbers”
	for(( i=0 ;i<Range; i++ ))
	do
		read m
		Array[i]=$m
	done
	for(( i=1; i<Range; i++ ))
		do
			for(( j=0; j<Range-i; j++))
			do
				if [ ${Array[$j]} -gt ${Array[$j+1]} ]
				then
					Temp=${Array[$j]}
					Array[$j]=${Array[$j+1]}
					Array[$j+1]=$Temp
				fi
			done
		done
	echo “Sorted array is”
#	for(( i=0; i<Range; i++ ))
#	do
		echo ${Array[$i]}
#	done



echo “Enter the element to be searched :”
read s
l=0
c=0
u=$(($Range-1))
while [ $l -le $u ]
do
mid=$(((( $l+$u ))/2 ))
if [ $s -eq ${Array[$mid]} ]
then
c=1
break
elif [ $s -lt ${Array[$mid]} ]
then
u=$(($mid-1))
else
l=$(($mid+1))
fi
done

if [ $c -eq 1 ]

then

echo “Element found at position $(($mid+1))”

else

echo “Element not found”

fi
