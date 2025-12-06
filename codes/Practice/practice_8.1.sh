# Bash script to find .c files containing lines longer than 50 characters using sed.
# For each .c file, print the file name if it contains one or more lines exceeding 50 characters.

#!/bin/bash
for file in *.c ; do
        sed -n '/^.\{51\}/q1' $file 2>/dev/null

        if [ $? -eq 1 ]; then
                echo $file
        fi
done