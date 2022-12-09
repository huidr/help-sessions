#!/bin/bash

echo "Enter three numbers in increasing order"
read a b c

if [[ $a < $b ]] && [[ $b < $c ]]; then
    if (( a*a + b*b == c*c )); then
	echo "The numbers form a Pythagorean triplet"
    else
	echo "The numbers do not form a Pythagorean triplet"
    fi
else
    echo "Numbers are not in correct order"
fi
