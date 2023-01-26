#include<math.h>
#include<stdio.h>
#include<stdlib.h> // libraries added from example
#include<time.h>
//(*) For a square matrix calculate the sum of elements under the main diagonal excluding it.
#define A -10
#define B 10

int main(){
	int r,c;
	int row,col,sum=0;
	printf("How man rows in array? "); // just like the last lab we decide how big the matrix will be
	scanf("%d", &r);
	printf("How man columns in array? \n");
	scanf("%d", &c);
	srand48(time(NULL)); //Call srand48 with current time reported by `time` casted to a long integer.
	// srand48 is used to reinitialize the most recent 48-bit value in this storage
	int array[r][c]; // we decided its gonna be r rows and c columns
	for (row=0;row<r;++row) // we cycle numeration of rows of matrix
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
	printf("\n");
	printf("sum of array: %d\n", sum);

	return 0;
}


