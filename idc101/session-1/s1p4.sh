#!/bin/bash

echo "Enter five numbers"
read a b c d e

sum=`expr $((a+b+c+d+e))`
avg=`expr $((sum / 5))`
echo "Sum is: $sum"
echo "Average is: $avg"

exit 0
