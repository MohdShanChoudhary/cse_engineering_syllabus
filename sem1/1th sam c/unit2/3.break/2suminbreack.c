#include <stdio.h>

int main() {
    int num, sum = 0, i, n;
    printf("Enter Number of inputs: ");
    scanf("%d", &n);
    for (i = 1; i <= n; ++i) {
        printf("Enter num%d: ", i);
        scanf("%d", &num);
        if (num == 0) {
            printf("Loop Breaked\n");
            break; // Exits the loop if num == 0
        }sum = sum + num;
       
    } 
    printf("Total is %d", sum);
   
   
}
