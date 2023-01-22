#!/bin/bash
read -r -p "enter the number: " num
printf "%s\n" "${num:1:1}"
