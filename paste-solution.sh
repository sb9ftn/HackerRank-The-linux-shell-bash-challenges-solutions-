#!/bin/bash

# Challange 01:
# In this challenge, we practice using the paste command to merge lines of a given file.
# You are given a CSV file where each row contains the name of a city and its state separated by a comma.
# Your task is to replace the newlines in the file with semicolons as demonstrated in the sample.

paste -s -d ";"

# Challange 02:
# In this challenge, we practice using the paste command to merge lines of a given file.
# You are given a CSV file where each row contains the name of a city and its state separated by a comma. 
# Your task is to restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.

paste -d ";" - - -

# Challange 03:
# Given a CSV file where each row contains the name of a city and its state separated by a comma, 
# Your task is to replace the newlines in the file with tabs as demonstrated in the sample.

paste -s -d "\t"

# Challange 04:
# Given a CSV file where each row contains the name of a city and its state separated by a comma
# Your task is to restructure the file in such a way, that three consecutive rows are folded into one, and separated by tab.

paste -d "\t" - - -