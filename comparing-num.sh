#!/bin/bash

#Given two integers, X and Y, identify whether X<Y or X>Y  or X=Y .
# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y

read -p "Enter first number: " x
read -p "Enter second number: " y

if [ $x -lt $y ]
then
    echo "X is less than Y"
elif [ $x -gt $y ]
then
    echo "X is greater than Y"
elif [ $x -eq $y ]
then
    echo "X is equal to Y"
fi
exit 0