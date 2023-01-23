#!/bin/bash
#(*) Determine whether there are the same digits among the digits of a given three-digit number.

	printf "are there same digits among the digits of a given three-digit number? \n"
read -r -p "enter a three digit number: " num
        digit1="$((num % 10))"
        num="$(( num / 10 ))"
        digit2="$((num % 10))"
        num="$(( num / 10 ))"
        digit3="$((num % 10))"

	if [[ $digit1 = $digit2 || $digit1 = $digit3 || $digit2 = $digit3 ]] ; then 
        printf "YES\n"
	else
	printf "NO\n"
	fi

