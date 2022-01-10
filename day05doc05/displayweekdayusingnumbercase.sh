#!/bin/bash -x
read -p "enter number (1-7) to display week day: " num

case $num in
   1) echo "SUNDAY"
      ;;
   2) echo "MONDAY"
      ;;
   3) echo "TUESDAY"
      ;;
   4) echo "WEDNESDAY"
      ;;
   5) echo "THURSDAY"
      ;;
   6) echo "FRIDAY"
      ;;
   7) echo "SATURDAY"
      ;;
   *) echo " week day have only seven days "
esac
