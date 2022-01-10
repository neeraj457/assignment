#!/bin/bash -x
inch=12
feet=42
feettoinches=$(($feet/$inch))
echo "$feettoinches inch"

width=60;
hight=40;
rectangularplotinmeter=$(($width*$hight*3048/10000))
echo "$rectangularplotinmeter meter"

echo "area of 25 plot"
area=25*$rectangularplotinmeter**2;
areaofplots=$(($area*100/404686))
echo "$areaofplots arce"


