#!/bin/bash

echo "Enter the value of n."
read n

((value=n*(n+1)/2))
echo "The value is: $value."
