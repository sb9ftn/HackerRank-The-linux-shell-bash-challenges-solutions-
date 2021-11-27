#!/bin/bash

# Challange 01:
# In this challenge, we practice using the sort command to sort input in text or TSV formats.
# Given a text file, order the lines in lexicographical order.
sort 

# Challange 02:
# Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).
sort -r

# Challange 03:
# You are given a text file where each line contains a number.
# The numbers may be either an integer or have decimal places.
# There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in ascending order -
# so that the first line holds the numerically smallest number, and the last line holds the numerically largest number.
sort -n

# Challange 04:
# You are given a file of text, where each line contains a number (which may be either an integer or have decimal places).
# There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in descending order - 
# - such that the first line holds the (numerically) largest number and the last line holds the (numerically) smallest number.

sort -nr