# file contains words in format FIRST_second , convert them to SECOND_first using sed 

sed 's/^\([^_]*\)_\([^_]*\)$/\U\2_\L\1/' words.txt 