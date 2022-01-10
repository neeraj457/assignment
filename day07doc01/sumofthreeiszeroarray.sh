#!/bin/bash -x
read -a array
tot=0
for i in ${array[@]}; do
  let tot+=$i
done
echo "Total: $tot"


for(( i=0; i<${#array[@]}; i++ ))
do
	firstnumber=${array[i]}
	for(( j=$(($i+1)); j<${#array[@]}; j++))
	do
		secondnumber=${array[j]}
		for (( k=$(($j+1)); k<${#array[@]}; k++))
		do
			thirdnumber=${array[k]}
			sum=$(($firstnumber+$seconfnumber+$thirdnumber))
			if [ $sum -eq 0 ]
			then
				echo "$firstnumber + $secondnumber + $thirdnumber = $sum"

			fi
		done
	done
done

