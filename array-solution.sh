#!/bin/bash

# Challange 01:
# Given a list of countries, each on a new line,
# Your task is to read them into an array and then display the entire array, with a space between each of the countries' names.

array=($(cat))
echo ${array[@]}


# Challange 02:
# Given a list of countries, each on a new line, your task is to read them into an array. 
# Then slice the array and display only the elements lying between positions 3 and 7, both inclusive. Indexing starts 0 from .

array=($(cat))
echo ${array[@]:3:5}

# Challange 03:
# You are given a list of countries, each on a new line. 
# Your task is to read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'.

array=($(cat))
echo ${array[@]/*[a/A]*/}

# Challange 04:
# Given a list of countries, each on a new line.
# Your task is to read them into an array. 
# Then, concatenate the array with itself (twice).
# So that you have a total of three repetitions of the original array - 
# and then display the entire concatenated array, with a space between each of the countries' names.

array=($(cat))
echo ${array[@]} ${array[@]} ${array[@]}

# Challange 05:
# Given a list of countries, each on a new line,
# Your task is to read them into an array and then display the element indexed at 3. 
# Note that indexing starts from 0.

array=($(cat))
echo ${array[3]}

# Challange 06:
# Given a list of countries, each on a new line, your task is to read them into an array and then display the count of elements in that array.

array=($(cat))
echo ${#array[@]}

# Challange 07:
# You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way:
#The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). 
# Then, display the entire array with a space between each country's names

array=($(cat))
echo ${array[@]/[:A-Z:]/.}

# Challange 08:
# There are  integers in an array . All but one integer occur in pairs. Your task is to find the number that occurs only once.

read
array=($(cat))
echo ${array[@]} | tr " " "\n" | sort | uniq -u | tr "\n" " "