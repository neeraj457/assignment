#!/bin/bash -x

read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if [ $Month -eq 3 ] && [ $date -ge 20 ] && [ $date -lt 31 ]
then
    echo $date $Month "True";

elif [ $Month -gt 3 ] && [ $Month -lt 6 ] && [ $date -lt 31 ]
then
    echo $date $Month "True";

elif [ $Month -le 6 ] && [ $date -le 20 ]
then
    echo $Month $date "True";

else
    echo "False";
fi
