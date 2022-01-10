#!/bin/bash -x
read -p "enter number" num

function prime {
	for((i=2; i<=$num/2; i++))
	do
  		if [ $(($num%i)) -eq 0 ]
  		then
    		echo "$num is not a prime number."
    	exit
  		fi
	done
	echo "$num is a prime number."
	n=$num
	echo $n
}

function pal {
	number=$n
	reverse=0
	while [ $n -gt 0 ]
	do
		a=$(($n%10))
		n=$(($n/10))
		reverse=$(($reverse*10 +$a))
	done

	echo $reverse

	if [ $number -eq $reverse ]
	then
   	echo "Number is palindrome"
		palindrome=$reverse
	else
   	echo "Number is not palindrome"
	fi
}


p= prime $num
echo $p

if [ $n -eq $num ]
then
	r= pal $n
	echo $r
fi

if [ $palindrome -eq $num ]
then
	echo $(prime $palindrome)
fi
