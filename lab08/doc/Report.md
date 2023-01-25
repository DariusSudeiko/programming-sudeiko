# N. The topic of the work

Purpose: Appropriate to the topic and task

## 1 Requirements

### 1.1 Developer

Information about the developer:

- Darius Sudeiko;
- KH-922i.e;
- Lab08 arrays.

### 1.2 General task (according to a variant)

General task is to understand how to use arrays and how change the information inside them

### 1.3 Task

Fill the array of integers of the given size with Fibonacci numbers 

## 2 Description of the program

### 2.1 Means

I begin by tell the program first two arrays and it continues coutning them using the for loop
The user decides how big the array is.

### 2.2 Program structure

	for (i = 2; i < n; i++) { // i=2 because i already gave the program info about first two segments
    arr[i]=arr[i-1]+arr[i-2]; // this is how each segment of an array is being counted 
	}
	for (i=0; i<n; i++){
		printf("location in array %d value: %d\n",i, arr[i]); // writing out the parts of the array
	}

### 2.3 Important parts of the program

Parts of the program source code to demonstrate the solution to the problem.

## 3 Usage options

Description of program behavior: "who" and "what" can do. Illustrated by results - console output, debug output, etc.

## Conclusions

Conclusion regarding the completeness of the achievement of the goal.
