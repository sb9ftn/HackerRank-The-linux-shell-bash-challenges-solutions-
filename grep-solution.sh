#!/bin/bash

# Challange 01:
# You are given a text file that will be piped into your command through STDIN.
#  Use grep to display all the lines that contain the word the in them.
#  The search should be sensitive to case. Display only those lines of the input file that contain the word 'the'.

grep -w 'the'

# Challange 02:
#  You are given a text file that will be piped into your command through STDIN.
#  Use grep to remove all those lines that contain the word 'that'.
#  The search should NOT be sensitive to case.

grep -vi 'that'

# Challange 03:
# You are given a text file that will be piped into your command through STDIN.
# Use grep to display all those lines that contain the word the in them.
# The search should NOT be sensitive to case.
# Display only those lines of the input file that contain the word 'the'.

grep -wi 'the'

# Challane 04:
# Given a text file, which will be piped to your command through STDIN, 
# use grep to display all those lines which contain any of the following words in them:
# the
# that
# then
# those
# The search should not be sensitive to case. Display only those lines of an input file, which contain the required words.

grep -iwe "the\|that\|then\|those"

# Challange 05:
# Given an input file, with N credit card numbers, each in a new line, 
# your task is to grep out and output only those credit card numbers which have two or more consecutive occurences of the same digit (which may be separated by a space, if they are in different segments). Assume that the credit card numbers will have 4 space separated segments with 4 digits each.
# If the credit card number is 1434 5678 9101 1234, there are two consecutive instances of 1 (though) as highlighted in box brackets:
#  1434 5678 910[1] [1]234
# Here are some credit card numbers where consecutively repeated digits have been highlighted in box brackets.
# The last case does not have any repeated digits:
# 1234 5678 910[1] [1]234
# 2[9][9][9] 5178 9101 [2][2]34
# [9][9][9][9] 5628 920[1] [1]232
# 8482 3678 9102 1232

grep '\([0-9]\) *\1'