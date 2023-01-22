#!/bin/bash
# A 4-digit decimal integer is given.
# Determine the sum of the digits of the given number.

read -r -p "enter a four digit number: " num
	digit1="$((num % 10))"
	num="$(( num / 10 ))"
	digit2="$((num % 10))"
	num="$(( num / 10 ))"
	digit3="$((num % 10))"
	num="$(( num / 10 ))"
	digit4="$((num % 10))"
	sum=$(($digit1 + $digit2 + $digit3 + $digit4))
	printf "the sum of digits is: %d\n" "${sum}"
