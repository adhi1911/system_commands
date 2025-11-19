#!/bin/bash

#Write a bash script that takes a number as an argument and prints "Yes" if the number is a prime number, else prints "No".

for ((i=2; i<=$(bc <<< "sqrt($1)"); i++)); do
    (($1%i==0)) && echo No && exit
done
echo Yes

# bc <<< "sqrt($1)" : calculates the square root of the input number using bc command
# logic:
# we scan from 2 to sqrt(n) to check if any number divides n. If we find such a number, we print "No" and exit. If no such number is