#!/bin/bash

# In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it.

# Challange 01:
# Given a text file, remove the consecutive repetitions of any line.
uniq

# Challange 02:
# Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. 
# Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. 
# Please note that the uniq -c command by itself will generate the output in a different format than the one expected here.
# Also input file is having multiple whitespace at start of each line ( 7 char precise)

uniq -c | cut -c 7-

# Challange 03:
# Given a text file, count the number of times each line repeats itself (only consider consecutive repetions). 
# Display the count and the line, separated by a space. There shouldn't be leading or trailing spaces.
# Please note that the uniq -c command by itself will generate the output in a different format.
# This time, compare consecutive lines in a case insensitive manner.
# So, if a line X is followed by case variants, the output should count all of them as the same (but display only the form X in the second column).
# So, as you might observe in the case below: aa, AA and Aa are all counted as instances of 'aa'.

uniq -ci | cut -c 7-

# Challange 04:
# Given a text file, display only those lines which are not followed or preceded by identical replications.

uniq -u