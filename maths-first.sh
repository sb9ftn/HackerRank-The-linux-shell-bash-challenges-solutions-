#!/bin/bash

# A mathematical expression containing +,-,*,^, / and parenthesis will be provided.
# Read in the expression, then evaluate it. Display the result rounded to  decimal places.

read -p "Enter expression :" expr

eval=$(echo "$expr" | bc -l)
printf "%.3f" "$eval"

exit 0

