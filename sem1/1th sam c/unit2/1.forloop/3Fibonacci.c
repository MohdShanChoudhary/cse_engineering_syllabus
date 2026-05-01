#include <stdio.h>

int main()
{
    int i, a, b, c;
    a = 0;
    b = 1;

    for (i = 1; i <= 10; i++)
    {
        printf("%d", a);
        c = a + b;
        a = b;
        b = c;
        
    }

    return 0; // You should return an integer from the main function
}
