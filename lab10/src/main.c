#include<math.h>
#include<stdio.h>
#include<stdlib.h> // libraries added from example
#include<time.h>
//(*) For a square matrix calculate the sum of elements under the main diagonal excluding it.
#define A -10
#define B 10


int main(){
	void enter(int *x,int *y);
	int get_random(int lbound,int ubound); // telling the programs that functions are declared
	int r;
	int c;
	int row,col,sum=0;
	enter(&r,&c); // calling the function
	srand48(time(NULL)); //Call srand48 with current time reported by `time` casted to a long integer.
	// srand48 is used to reinitialize the most recent 48-bit value in this storage
	int array[r][c]; // we decided its gonna be r rows and c columns
	int line[r*c]; // turning 2d into 1d array
	for (row=0;row<r;++row) // we cycle numeration of rows of matrix
	{
		for(col=0;col<c;col++) // we cycle numeration of columns of matrix
		{
			array[row][col]=get_random(B,A);// filling array with random numbers, taken from example
			printf("%d ",array[row][col]);
			if (row>col){ //since we want the sum numbers below the diagonal row>col must be true
			sum=sum+array[row][col];// if row>col then we add the number to our sum;
			};
		}
		printf("\n"); // this is to break line after row 1,2 col 3, so it looks nicer
	}
	for (row=0;row<r;++row) // we cycle numeration of rows of matrix
	{
		for(col=0;col<c;col++) // we cycle numeration of columns of matrix
		{
			line[row*r+col] = array[row][col];
		}
	}
	printf("the array in 1D: ");
	for (row=0;row<r*c;row++){
		printf("%d ", line[row]);
	}
	printf("\n");
	printf("sum of array below the diagonal: %d\n", sum);

	return 0;
}
void enter(int *x,int *y){ // we have to use pointers if we want more then one return from a function

	printf("How man rows in array?  "); // just like the last lab we decide how big the matrix will be
	scanf("%d", x); // we use x instead of &x because we need the adress of the number not the value
	printf("How man columns in array? ");
	scanf("%d", y); // we use y instead of &y because we need the adress of the number not the value

}
int get_random(int lbound,int ubound)
{
	return mrand48()%(ubound-lbound+1)+lbound; // function for generating random numbers
	}