#!/bin/bash

# Challange 01:
# For each line in a given input file, 
# transform the first occurrence of the word 'the' with 'this'. 
# The search and transformation should be strictly case sensitive.

sed 's/the /this /'

# Challange 02:
# For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. 
# The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.

sed 's/thy/your/gI'

# Challange 03:
# Given an input file, in each line, highlight all the occurrences of 'thy' by wrapping them up in brace brackets.
# The search should be case-insensitive.

sed 's/thy/{&}/gi'

# Challange 04:
# Given  lines of credit card numbers, mask the first 12 digits of each credit card number with an asterisk (i.e., *) 
# and print the masked card number on a new line. 
# Each credit card number consists of four space-separated groups of four digits. 
# For example, the credit card number 1234 5678 9101 1234 would be masked and printed as **** **** **** 1234.

sed -r 's/[0-9]{4}[ ]/**** /g'

# Challange 05:
#  Given an input file, with N credit card numbers, each in a new line,
#  your task is to reverse the ordering of segments in each credit card number.
#  Assume that the credit card numbers will have 4 space separated segments with 4 digits each.
#  If the original credit card number is 1434 5678 9101 1234, transform it to 1234 9101 5678 1434.


sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1 /g' 