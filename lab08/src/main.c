#include <stdio.h>

int main() {
  int n;
  int i;
  printf("enter size of array: ");
  scanf("%d", &n);
  int arr[n];
  arr[0]=0;
  arr[1]=1;
	for (i = 2; i < n; i++) {
    arr[i]=arr[i-1]+arr[i-2];
	}
	for (i=0; i<n; i++){
		printf("location in array %d value: %d\n",i, arr[i]);
	}

 return 0;
}