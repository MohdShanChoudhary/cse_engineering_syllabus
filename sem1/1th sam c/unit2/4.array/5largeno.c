// #include<stdio.h>
// int main(){
//     int arr[100],i,size;
    
//     printf("Enter the value of size ");         
//     scanf("%d",&size);

//     for(i=0;i<size;i++){
//         printf("enter the element %d;;;",i+1);
//         scanf("%d",&arr[i]);


//     }
//     int max=arr[0];
//     for(i=0;i<size;i++){
//         if(max<arr[i+1]){
//             max=arr[i+1];
//         }


//     }
//     printf("%d",max);


// }


#include <stdio.h>
int main()
{
    int i;
    int a[5] = {1, 2, 3, 4, 5};
    int *p = a;     // same as int*p = &a[0]
    for (i = 0; i < 5; i++)
    {
        printf("%d", *(p+i));
        
    } 
    return 0;
}
