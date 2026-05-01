
#include <stdio.h>

void sum(int a, int b) {
    int c = a + b;
    printf("%d\n", c);
}

int main() {
    void (*ptr)(int, int);
    ptr = &sum;

    // Calling the function through the function pointer
    (*ptr)(5, 5);

    return 0;
}
