# N. The topic of the work

Purpose: Appropriate to the topic and task

## 1 Requirements

### 1.1 Developer

Information about the developer:

- Darius;
- 922KH i.e;
- Lab07 Task 15.

### 1.2 General task (according to a variant)

Determine the reciprocal of a given integer..

### 1.3 Task

The task is to determine reciprocal of given number using while, for and do while loops.

## 2 Description of the program

### 2.1 Means

In essence to complete this task i used % to find out a digit of the last number, 
Then i multiply the last digit by 10, and add the remainder of the second number using %
This goes on as long as i>0

### 2.2 Program structure

for(i=n;i>0;i=i/10) 
	// 1(init) - we asign i value of n, if we didnt use i, at the end n would return 0;
	// 2(condition) - i has to be greater than 0
	// 3(increment) - every loop i want i to be divided by 10 
    {
        remainder=i%10;
        reverse=reverse*10+remainder;
    }

### 2.3 Important parts of the program

The main.c is written with the for loop , but all loops are shown in lab07/solutions.txt

## 3 Usage options

Description of program behavior: "who" and "what" can do. Illustrated by results - console output, debug output, etc.

## Conclusions

In conclusion , i sucesfully learned how to use for, while and do while loops
