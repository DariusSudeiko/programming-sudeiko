# N. The topic of the work

Purpose: Appropriate to the topic and task

## 1 Requirements

### 1.1 Developer

Information about the developer:

- Darius Sudeiko;
- KH-922i.e;
- Lab 09, 2d arrays.

### 1.2 General task (according to a variant)

For a square matrix calculate the sum of elements under the main diagonal excluding it.

### 1.3 Task

Using what i learned in the previous labs, i used 2d arrays and for loops to complete the task

## 2 Description of the program

### 2.1 Means

Two for loops cycle the inside of the matrix untill they find the numbers that are below the diagonal.
Once the numbers are found they are added to sum.

### 2.2 Program structure

int row represent rows and int col represents columns
int r and c represent the size of the matrix which user decides 
for loops are used for searching inside of the matrix
srand48(time(NULL)) is used to fill the inside of the matrix with random numbers


### 2.3 Important parts of the program

for (row=0;row<r;++row)  we cycle numeration of rows of matrix
	{
		for(col=0;col<c;col++) // we cycle numeration of columns of matrix
		{
			array[row][col]=mrand48()%(B-A+1)+A;// filling array with random numbers, taken from example
			printf("%d ",array[row][col]);
			if(row>col){ //since we want the sum numbers below the diagonal row>col must be true
				sum=sum+array[row][col]; // if row>col than we add the number to our sum
			}
		}
		printf("\n"); // this is to break line after row 1,2 col 3, so it looks nicer
	}

## 3 Usage options

Description of program behavior: "who" and "what" can do. Illustrated by results - console output, debug output, etc.

## Conclusions

Using 2d arrays and for loops we are able to calculate parts of a matrix.
