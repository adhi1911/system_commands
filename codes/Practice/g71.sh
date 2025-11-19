#!/bin/bash

# read input file. if line starts with digit, replace 'delta' with 'gamma' else print line as it is.

IFS='$\n'
while read line;
do
        [[ $line =~ ^[0-9] ]] && echo ${line/delta/gamma} || echo $line
done < input.txt

# ${line/pattern/replacement} : replace first occurrence of pattern with replacement in variable line