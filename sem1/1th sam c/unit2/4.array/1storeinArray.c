#include <stdio.h>

int main() {
    int i;
    int arr[10];

    printf("Enter 10 numbers:\n");

    for (i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Entered numbers are:\n");

    for (i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}
