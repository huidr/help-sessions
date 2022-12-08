#!/bin/bash

echo "Enter five numbers"
read a b c d e

sum=`expr $a + $b + $c + $d + $e`

let prd=a*b*c*d*e

echo "Sum is: $sum"
echo "Product is: $prd"

