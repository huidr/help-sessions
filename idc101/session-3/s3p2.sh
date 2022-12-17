#!/bin/bash

echo "Enter a string"
read string

len=${#string}

for (( v=len-1; v>= 0; v-- )) # note the C++ style syntax
do
    s=${string:v:1}
    echo -n "$s"
done

echo
exit 0

# for v in {0..$max} wont work in the above case
