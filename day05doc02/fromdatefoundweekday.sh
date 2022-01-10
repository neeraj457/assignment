#!/bin/bash -x
read -p "month (1-12) :" m
read -p "day :" d
read -p "year :" y

yo=$(($y-$((14-$m))/12))
x=$(($yo+$(($yo/4))-$(($yo/100))+$(($yo/400))))
mo=$(($m+12*$(($((14-$m))/12))-2))
wd=$(($(($d+$x+31*$mo/12))%7))
echo "week day $wd"
