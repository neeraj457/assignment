#!/bin/bash -x
echo " feet to inches"
feetintoinch=12
feet=42
inchs=$((feet/feetintoinch))
echo "feet to inches " $inchs

echo  " area of rectangular in meter"
Lengthinfeet=60;
Widthinfeet=40;
areaofRectangularinfeet=$((Lengthinfeet*Widthinfeet))
areaofRectangularinMeter=$((areaofRectangularinfeet*3048/10000));

echo "area of25 such plots in arces"
areas=25*areaofRectangularinMeter**2;
oneacre="4046.86 square meter"
acreofarea=$((areas*100/404686))
