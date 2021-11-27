#!/bin/bash

#Given N integers, compute their average, rounded to three decimal places.

read N
sum=0

for ((i=0;i<N;i++))
do
    read num
    sum=$((sum+num))
done

avg=$(echo "scale = 4; $sum/$N" | bc -l)
printf "%.3f" "$avg"

exit 0
