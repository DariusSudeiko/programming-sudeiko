//(*) Determine the position of the number with the minimum value in a three-digit number. 
//The numbering starts with 1. For example, if 𝑥 = 413, the minimum value is 1, which is in the 2nd position.

#include<stdio.h>

int main () 
{
int num, remainder;
printf ("Enter a three digit number: ");
scanf ("%d", &num);
int smallest = num%10;
int place = 3; 

if (num>99 && num<1000){

while (num > 0)
    {
remainder = num % 10; // its equal to smallest only the first loop
if (smallest > remainder) // evey loop it checks if the last number was bigger than the currennt
 {
       smallest = remainder; // if it was then the current number is smallest
       place = place - 1; // if no new small number is found than value stays 3
 }
num = num / 10;
    }
printf ("The Smallest Digit is :%d \n", smallest); 
printf ("Which is digit number: %d \n", place);
return 0;
}
else
{
    printf ("incorrect input");
}
}