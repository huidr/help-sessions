#!/bin/bash

echo "Enter numbers. Enter 0 to stop."

sum=0
prd=1
while read input
do
    if [[ $input == 0 ]]; then
	break
    fi
    sum=`expr $sum + $input`
    prd=`expr $prd \* $input`
done

echo "The sum is $sum"
echo "The product is $prd"
