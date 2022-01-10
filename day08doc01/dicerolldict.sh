#!/bin/bash -x
n=0;
i=1;
j=1;
max=0;
mon=0;
max_key=0;
min_key=0;
declare -A dice_number
dice_number[1]=0;
dice_number[2]=0;
dice_number[3]=0;
dice_number[4]=0;
dice_number[5]=0;
dice_number[6]=0;

while [ $n -le 100 ]
do
   die=$(($((RANDOM%6))+1));
   if [ $die -eq 1 ]
   then
      dice_number[1]=$((${dice_number[1]}+1))
      if [ ${dice_number[1]} -eq 10 ]
		then
			echo ${dice_number[1]}
			break
		fi

   elif [ $die -eq 2 ] && [ ${dice_number[2]} -le $n ]
   then
      dice_number[2]=$((${dice_number[2]}+1))
		if [ ${dice_number[2]} -eq 10 ]
      then
         echo ${dice_number[2]}
         break
      fi

   elif [ $die -eq 3 ] && [ ${dice_number[3]} -le $n ]
   then
      dice_number[3]=$((${dice_number[3]}+1))
      if [ ${dice_number[3]} -eq 10 ]
      then
         echo ${dice_number[3]}
         break
      fi

   elif [ $die -eq 4 ] && [ ${dice_number[4]} -le $n ]
   then
      dice_number[4]=$((${dice_number[4]}+1))
      if [ ${dice_number[4]} -eq 10 ]
		then
			echo $((${dice_number[4]}))
			break
		fi
   elif [ $die -eq 5 ] && [ ${dice_number[5]} -le $n ]
   then
      dice_number[5]=$((${dice_number[5]}+1))
      if [ ${dice_number[5]} -eq 10 ]
		then
			echo $((${dice_number[5]}))
			break
		fi
   elif [ $die -eq 6 ] && [ ${dice_number[6]} -le $n ]
   then
      dice_number[6]=$(($((${dice_number[6]}))+1))
      if [ ${dice_number[6]} -eq 10 ]
		then
		   echo $((${dice_number[6]}))
			break
		fi
   else
      echo "a"
   fi
	((n++))
done
echo ${dice_number[@]}


while [ $i -le 6 ]
do
	num=${dice_number[$i]}
	echo "num "$num
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
done



while [ $j -le 6 ]
do
	k=${dice_number[$j]}
	if [ $k -eq $max ]
	then
		max_key=$j
	fi
	if [ $k -eq $min ]
   then
		min_key=$j
   fi
	((j++))
done
echo " maximum time dice number"  $max_key
echo " minimum time dice number"  $min_key
