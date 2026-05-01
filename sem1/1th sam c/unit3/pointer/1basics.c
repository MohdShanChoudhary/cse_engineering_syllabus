#include <stdio.h>

int main() {
   int a = 10;    // variable declaration
   int *p;        // pointer variable declaration
   p = &a;        // store the address of variable a in pointer p

   // Accessing the address
   printf("Address stored in variable p is: %p\n", p);  // %x for hexadecimal

   // Accessing the value
   printf("Value stored in variable p is: %d\n", *p);    // *p to dereference the pointer

   return 0;
}


//  & adress of opretor ;
// we can change the value  by pointed by a pointer 
#include <stdio.h>
int main(){


int x=10;
int *p=&x;
*p=5;
printf("%d",*p);
}











