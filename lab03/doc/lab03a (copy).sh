#!/bin/bash
# A three-digit number is given. Calculate the value of the second digit in the number.
# For example,𝑥 = 456 → 𝑦 = 5$.

read -r -p "enter a three digit number: " num

	num="$(( num / 10 ))"
	digit="$((num % 10))"
	printf "the second digit is: %d\n" "${digit}"
