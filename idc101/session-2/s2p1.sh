#!/bin/bash

echo "Enter five numbers separated by a space"
read a b c d e

((sum=a+b+c+d+e))

let prd=a*b*c*d*e

echo "Sum is: $sum"
echo "Product is: $prd"

