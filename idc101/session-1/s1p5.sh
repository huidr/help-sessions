#!/bin/bash

sum=0
for v in {1..50};
do
    sum=`expr $((sum+v))`
done
avg=`expr $((sum/50))`

echo "The sum is $sum"
echo "The average is $avg"

exit 0
