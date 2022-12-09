#!/bin/bash

input="/home/crazygeek/Documents/Reps/bash-help-sessions/idc101/temp/nums"

sum=0
count=0

while read line
do
    ((sum+=line))
    ((count+=1))
    echo $line
done < "$input"

((avg=sum/count))

echo "The sum is: $sum."
echo "The average is: $avg."
