#!/bin/bash

#input is any number of arguements and print arguements at odd positions. 
# outputs should be space separated on same line.

for(( i=1; i < $# ; i++ ))  
do
        if (( $i %2 == 1 ))
        then
                echo -n "${!i} "
        fi
done

# $# : total number of arguements
# ${!i} : accessing the value of the ith arguement
