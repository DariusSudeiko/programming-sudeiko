#include <stdio.h>

int main() {

  int n, reverse = 0, remainder;

  printf("Enter an integer: ");
  scanf("%d", &n);
  do{
	remainder = n % 10;
    reverse = reverse * 10 + remainder;
    n /= 10;
  }
  while (n);
  printf("Reversed number = %d", reverse);

  return 0;
}