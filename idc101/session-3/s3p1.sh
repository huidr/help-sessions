#!/bin/bash

echo "Enter a natural number"
read a

b=0

while (( a != 0 ));
do
    ((y=a%10))
    ((b=b*10+y))
    ((a=a/10))
done

echo "The reversed number is: $b"
