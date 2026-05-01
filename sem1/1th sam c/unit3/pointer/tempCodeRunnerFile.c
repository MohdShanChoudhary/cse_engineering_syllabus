

// bigest vslue in array      [4,6,7,9,5]
#include <stdio.h>
#include <stdio.h>

int main() {
    int arr[5] = {4, 6, 3, 7, 9};
    int *max_ptr = &arr[0];  // Assume the first element is the maximum

    for (int i = 1; i < 5; i++) {
        if (*max_ptr < arr[i]) {
            *max_ptr = arr[i];
        }
    }

    printf("The maximum value is: %d\n", *max_ptr);

    return 0;
}



// sum of array element 