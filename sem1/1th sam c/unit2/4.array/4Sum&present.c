#include<stdio.h>

int main() {
    int n, i, sum = 0, pre;
    
    printf("Enter the number of subjects: ");
    scanf("%d", &n);
    
    int mark[n]; // Declare an array with size n
    
    for(i = 0; i < n; i++) {
        printf("Enter the value of subject %d: ", i + 1);
        scanf("%d", &mark[i]);
        sum += mark[i];
    }
    
    pre = (sum * 100) / (n * 100); // Calculate percentage (assuming marks are out of 100 for each subject)
    
    printf("Percentage is: %d%%\n", pre);
    printf("Sum is: %d\n", sum);

    return 0;
}

//Write a C Program to  Addition of All Elements of the Array
// Write a C Program to insert an element in an array.
// Write a C Find Smallest Element in Array .
// Write a C program to reversing an element in an array.
// C program to find the sum and calculate percentage of marks of n students using arrays
