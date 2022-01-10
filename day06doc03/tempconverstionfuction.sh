#!/bin/bash -x
echo "Temputer conversion"
echo "1 for deg C"
echo "2 for deg F"
read -p "select deg conversion : " num
read -p "Enter tempeture " temp

function degFahrenheit {
	if [ $dec -ge 0 ] && [ $dec -le 100 ]
	then
		degf=$(echo | awk "BEGIN { print 9/5 * $dec + 32 }")
		echo $degf
	else
		echo "Enter degC in between (0-100)"
	fi
}
function degCelsius {
   if [ $def -ge 32 ] && [ $def -le 212 ]
   then
		degc=$(echo |awk "BEGIN { print $(($def - 32)) * 5/9 }")
		echo $degc
   else
      echo "Enter degC in between (0-100)"
	fi
}

if [ $num -eq 2 ]
then
	dec=$temp
	degFahrenheit $dec
elif [ $num -eq  1 ]
then
	def=$temp
	degCelsius $def
else
	echo "select currect number "
fi
