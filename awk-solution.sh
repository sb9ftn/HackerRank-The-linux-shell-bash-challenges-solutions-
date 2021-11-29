#!/bin/bash

# # Challange 01:
# You are given a file with four space separated columns containing the scores of students in three subjects.
# The first column contains a single character (), the student identifier.
# The next three columns have three numbers each. The numbers are between  and , both inclusive.
# These numbers denote the scores of the students in English, Mathematics, and Science, respectively.
# Your task is to identify those lines that do not contain all three scores for students.

awk '{ if (NF < 4) {print "Not all scores are available for " $1}}'

# Challange 02:
# You are given a file with four space separated columns containing the scores of students in three subjects.
# The first column contains a single character (A-Z), the student identifier. The next three columns have three numbers each.
# The numbers are between 0 and 100, both inclusive. 
# These numbers denote the scores of the students in English, Mathematics, and Science, respectively.
# Your task is to identify whether each of the students has passed or failed.
# A student is considered to have passed if (s)he has a score 50 or more in each of the three subjects.

awk '{ print $1 ($2 < 50 || $3 < 50 || $4 < 50 ? " : Fail" : " : Pass") }'

# Challage 03:
# You are provided a file with four space-separated columns containing the scores of students in three subjects. 
# The first column, contains a single character (A-Z) - the identifier of the student.
# The next three columns have three numbers (each between 0 and 100, both inclusive) 
#which are the scores of the students in English, Mathematics and Science respectively.
#Your task is to identify the performance grade for each student.
# If the average of the three scores is 80 or more, the grade is 'A'. 
# If the average is 60 or above, but less than 80, the grade is 'B'. 
# If the average is 50 or above, but less than 60, the grade is 'C'. Otherwise the grade is 'FAIL'.

awk '{
    total=$2+$3+$4;
    avg=total/3;
    if(avg>=80) grade="A";
    else if(avg>=60 && avg<80) grade="B";
    else if(avg>=50 && avg<60) grade="C";
    else grade="FAIL";
    print $0, ":", grade;
    }'

# Challange 04:
# You are provided a file with four space-separated columns containing the scores of students in three subjects.
# The first column, contains a single character (A-Z) - the identifier of the student. 
# The next three columns have three numbers (each between 0 and 100, both inclusive) 
# which are the scores of the students in English, Mathematics and Science respectively.
# Output:
# Concatenate every 2 lines of input with a semi-colon.

awk 'ORS=NR%2?";":"\n"'