#/bin/bash

# Challange 01:
# Given N lines of input, print the 3rd character from each line as a new line of output. 
# It is guaranteed that each of the n lines of input will have a 3rd character.

cut -c 3 #cut command with -c option (c = Char )

# Challange 02:
# Display the 2nd and 7th character from each line of text.

cut -c 2,7

# Challange 03:
# Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).

cut -c 2-7

# Challange 04:
# Display the first four characters from each line of text.

cut -c 1-4

# Challange 05"
# Given a tab delimited file with several columns (tsv format) print the first three fields.

cut -f 1-3 # tab is default delimiter with -f option, in case of other delimiter -d option can used including -f 

# Challange 06:
# Print the characters from thirteenth position to the end.

cut -c 13-

# Challange 07:
# Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.

cut -d " " -f 4 # space is not considered as default delimiter with -f option, so we have to specifically use -d option here

# Challange 08:
# Given a sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words.

cut -d " " -f 1-3

# Challange 09:
# Given a tab delimited file with several columns (tsv format) print the fields from second fields to last field.

cut -f 2- # tab is default delimiter with -f option