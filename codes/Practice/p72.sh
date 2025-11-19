#~/bin/bash

# declare an array 
declare -A HASHES

# put all hashes in a list
while read -r h; do
    HASHES["$h"]=1
done < result


sum=0

# filter required hashes from map file 
while read -r hash file; do
    if [[ $HASHES["$hash"] ]]; then
        
        # found filee, read from it 
        money=$( head -1 $file | cut -d'$' -f2 )
        sum=$(( sum + money ))
    fi
done < map 

echo $sum

# array -A is for Associative array
# read -r is used to read a line without interpreting backslashes
# read -r v1 v2 is used to read two values from a line
# cut -d is used to specify delimiter
# -f is used to specify field number

