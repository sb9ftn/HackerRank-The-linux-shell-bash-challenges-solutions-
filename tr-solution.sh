#!/bin/bash

# Challange 01:
# In a given fragment of text, replace all parentheses () with box brackets [] .

tr '()' '[]'

# Challange 02:
# In a given fragment of text, delete all the lowercase characters a-z.

tr -d '[a-z]'

# Challange 03:
#In a given fragment of text, replace all sequences of multiple spaces with just one space.

tr -s ' '