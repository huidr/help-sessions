#!/bin/bash

echo "Enter three numbers in increasing order"
read a b c

if [[ $a < $b ]] && [[ $b < $c ]]; then
    left=$((a*a + b*b))
    rght=$((c*c))
    if [[ $left == $rght ]]; then
	echo "The numbers form a Pythagorean triplet"
    else
	echo "The numbers do not form a Pythagorean triplet"
    fi
else
    echo "Numbers are not in correct order"
fi
