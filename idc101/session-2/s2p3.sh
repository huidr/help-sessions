#!/bin/bash

echo "Enter positive integers. Enter 0 to stop."

read input

if [[ $input == 0 ]]; then # better write (( input == 0 ))
    exit 0
fi

min=$((input)) # better write ((min = input))
max=$((input)) # better write ((max = input))

while read input
do
    if [[ $input == 0 ]]; then # better write (( input == 0 ))
	break
    fi
    if [[ $input < $min ]]; then # better write (( input < min ))
	min=$((input))
    fi
    if [[ $max < $input ]]; then # better write (( max < input ))
	max=$((input))
    fi
done

echo "The minimum value is: $min" # dont use single quotes
echo "The maximum value is: $max"

exit 0
