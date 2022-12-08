#!/bin/bash

echo "Enter positive integers. Enter 0 to stop."

read input

if [[ $input == 0 ]]; then
    exit 0
fi

min=$((input))
max=$((input))

while read input;
do
    if [[ $input == 0 ]]; then
	break
    fi
    if [[ $input < $min ]]; then
	min=$((input))
    fi
    if [[ $max < $input ]]; then
	max=$((input))
    fi
done

echo "The minimum value is: $min" # dont use single quotes
echo "The maximum value is: $max"

exit 0
