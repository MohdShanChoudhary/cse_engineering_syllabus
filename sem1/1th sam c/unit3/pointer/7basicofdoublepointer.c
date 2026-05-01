// #include <stdio.h> 
// // C program to demonstrate pointer to pointer 
// int main() 
// { 
//     int var = 789; 
//     // pointer for var 
//     int *ptr2; 
//      // double pointer for ptr2 
//     int **ptr1; 
//      // storing address of var in ptr2 
//     ptr2 = &var; 
//       // Storing address of ptr2 in ptr1 
//     ptr1 = &ptr2; 
//      // Displaying value of var using both single and double pointers 
//     printf("Value of var = %d\n", var ); 
//     printf("Value of var using single pointer = %d\n", ptr2 ); 
//     printf("Value of var using double pointer = %d\n", ptr1); 
//      return 0; 
// } 

#include <stdio.h>
int main()
{
    int i;
    int a[5] = {1, 2, 3, 4, 5};
    int *p = a;     // same as int*p = &a[0]
    for (i = 0; i < 5; i++)
    {
        printf("%d", *p);
        p++;
    } 
    return 0;
}
