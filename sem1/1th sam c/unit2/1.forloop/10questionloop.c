#include <stdio.h>

int main() {
    int cnt = 1;
    
    do {
        printf("%d, ", cnt);
        cnt += 1;
    } while (cnt <= 10);
    
    printf("\nAfter loop, cnt=%d\n", cnt);

    return 0;
}
