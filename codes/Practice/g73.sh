#!/bin/bash

# read number array as input and print sum of even numbers

read -a num_array
echo entered
sum=0
for num in "${num_array[@]}"
do
        (( num%2==0)) && sum=$((sum+num))
done
echo $sum