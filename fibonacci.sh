#!/bin/bash

# Basic script for printing fibonacci series till given number
n=0
a=0
b=1

echo $a
while [ $n -lt 5 ]
do
        c=$((a+b))
        echo $c
        n=$((n+1))
        a=$b
        b=$c
done  