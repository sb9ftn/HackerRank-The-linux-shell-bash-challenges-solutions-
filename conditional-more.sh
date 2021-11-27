#!/bin/bash

# Given three integers (X, Y, and Z) representing the three sides of a triangle.
# identify whether the triangle is scalene, isosceles, or equilateral.
# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.

read -p "Enter value of side 01:" X
read -p "Enter value of side 02:" Y
read -p "Enter value of side 03:" Z

if [ $X -eq $Y ] && [ $X -eq $Z ] && [ $Y -eq $Z ]
then 
    echo "EQUILATERAL"
elif [ $X -ne $Y ] && [ $X -ne $Z ] && [ $Y -ne $Z ]
then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi
exit 0

