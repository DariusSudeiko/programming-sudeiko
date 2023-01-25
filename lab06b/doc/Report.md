# N. The topic of the work

Purpose: Understanding while loops and if clauses

## 1 Requirements

### 1.1 Developer

Information about the developer:

- Darius Sudeiko;
- 922i.e;
- Lab06 second task.

### 1.2 General task (according to a variant)

Determine the position of the number with the minimum value in a three-digit number.

### 1.3 Task

Learn about loops and if clauses.

## 2 Description of the program

### 2.1 Means

I used while loop, because with out it it would be difficult to assign new values to previous integers.

### 2.2 Program structure

We first declare all integers. 
Smallest starts with the value of the final digit of a given number.
Place is 3, because it is the maximum number of digits allowed to enter for this problem.
if 99 < num > 1000, makes sure that the number is three digit only
Next the while num > 0 loop checks wether the current smallest digit is larger than the new one, if it is, then it is given the value of that new digit , and int place is lowered by one , because it signifies the place of the digit.

### 2.3 Important parts of the program

while (num > 0)
    {
remainder = num % 10; // its equal to smallest only the first loop
if (smallest > remainder) // evey loop it checks if the last number was bigger than the currennt
 {
       smallest = remainder; // if it was then the current number is smallest
       place = place - 1; // if no new small number is found than value stays 3
 }

## 3 Usage options

Description of program behavior: "who" and "what" can do. Illustrated by results - console output, debug output, etc.

## Conclusions

The task was to find the which digit has the smallest value and the program does that correctly.
