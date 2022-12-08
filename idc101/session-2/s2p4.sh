#!/bin/bash

echo "Enter a number"
read x

if [ $((x%2)) == 0 ]; then
    echo "The number is divisible by 2"
elif [ $((x%3)) == 0 ]; then
    echo "The number is divisible by 3"
else
    echo "The number is not divisible by 2 or 3"
fi

