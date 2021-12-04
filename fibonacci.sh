#!/bin/bash

# Basic script for printing fibonacci series till given number
read num
n=0
a=0
b=1

echo $a
while [ $n -lt $num ]
do
        c=$((a+b))
        echo $c
        n=$((n+1))
        a=$b
        b=$c
done  
