// for loop
#include<stdio.h>

int main()
{
    int i,n,remainder,reverse=0;
     
    printf("\n  Enter The Number:");
    scanf("%d",&n);
     
    for(i=n;i;i=i/10) 
	// 1(init) - we asign i value of n, if we didnt use i, at the end n would return 0;
	// 2(condition) - i has to be greater than 0, we can just write i, not i > 0, altough it works
	// 3(increment) - every loop i want i to be divided by 10 
    {
        remainder=i%10;
        reverse=reverse*10+remainder;
    }
     
    printf("\n  The Reverse Number of %d is %d\n",n,reverse);
    
}