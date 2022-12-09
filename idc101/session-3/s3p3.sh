#!/bin/bash

echo "Enter a positive number"
read num

ind=0
while (( num != 0 )); do
    ((array[ind]=num%2))
    ((num=num/2))
    ((ind++))
done

echo -n "The binary representation is: "
for (( c = ind; c >= 0; c-- )); do
    echo -n ${array[c]}
done

echo
exit 0
