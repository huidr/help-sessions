#!/bin/bash

echo "Enter five numbers"
read a b c d e

((sum=a+b+c+d+e))
((avg=sum/5))
echo "Sum is: $sum"
echo "Average is: $avg"

exit 0
