#!/bin/bash

# Read in one character from STDIN.
# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.

read -p "Enter char:" char

if [ $char = 'y' ]
then
    echo "YES"
elif [ $char = 'Y' ]
then
    echo "YES"
elif [ $char = 'N' ]
then
    echo "NO"
elif [ $char = 'n' ]
then
    echo "NO"
fi

exit 0