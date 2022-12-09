#!/bin/bash

sum=0
for v in {1..50};
do
    ((sum=sum+v))
done
((avg=sum/50))

echo "The sum is $sum"
echo "The average is $avg"

exit 0
