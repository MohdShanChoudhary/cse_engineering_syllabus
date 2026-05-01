#include <stdio.h>

int main() {
    int n, sum = 0, average;

    printf("Enter number of elements: ");
    scanf("%d", &n);

    int marks[n];  // Declare the array with size n

    for (int i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%d", &marks[i]);
        sum = sum+marks[i];
    }

    average = sum / n;

    printf("Average = %d\n", average);
    printf("Sum is %d\n", sum);

    return 0;
}
