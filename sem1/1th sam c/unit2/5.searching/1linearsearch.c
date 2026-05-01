#include <stdio.h>
int main()
{
    int arr[100];
    int n, i, m;
    printf("No of element in arr  ;");
    scanf("%d", &m);
    printf("Enter the element in array ");
    for (i = 0; i < m; i++)
    {
        scanf("%d", &arr[i]);
    }

    printf("Enter the elemrnt you find ");
    scanf("%d", &n);
    for (i = 0; i < m; i++)
    {
        if (arr[i] == n)
        {
            printf("%d is found in index %d", i, n);
            
        }
    }
    if (arr[i] != n)
    {
        printf("not in arr");
    }
}