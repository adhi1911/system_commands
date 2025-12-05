# Bash script to process a file based on options (-l, -w, -n, -s) using sed:
# -l: Count the number of lines in the file.
# -w: Count the number of words in the file.
# -n: Count the number of lines containing only digits.
# -s <str>: Count the number of lines containing the string <str>.
# The file path is always the last argument.
# wrong flag: dont do anything

#!/bin/bash
file=${!#}   # or file=${@: -1}

while getopts "lwns:" opt; dp
    case $opt in
        l) sed -n '$=' $file ;;
        w) sed 's/\s/\n/g' $file | sed -n '$=' ;;
        n) sed -n '/^[0-9]\+$/p' $file | sed -n '$=' ;;
        s) sed -n "/$OPTARG/p" $file | sed -n '$=' ;;
    esac 
done   
