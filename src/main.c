#include <stdio.h>

int main()
{
    int num, digit1, digit2, digit3;
    printf ("Are there same digits among the digits of a given three-digit number? \n");
    scanf("%d", &num);
        digit1=num%10;
        num=num/10;
        digit2=num%10;
        num=num/10;
        digit3=num%10;

        if ((digit1 == digit2)||(digit1 == digit3)||(digit2 == digit3))
        { 
        printf ("YES\n");
	    }else {
	    printf ("NO\n");
        }
        

return 0;
}