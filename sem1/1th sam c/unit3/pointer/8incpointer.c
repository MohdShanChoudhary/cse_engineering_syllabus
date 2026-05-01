

//new_address= current_address + i * size_of(data type) 


#include<stdio.h>  
void main ()  
{  
    int arr[5] = {1, 2, 3, 4, 5};  
    int *p = arr;  
    int i;  
    printf("printing array elements...\n");  
    for(i = 0; i< 5; i++)  
    {  
        printf("%d  ",*p);  
        p++;
    }  
}  






#include <stdio.h>            
void main(){            
int number=50;        
int *p;//pointer to int      
p=&number;//stores the address of number variable        
   
printf("Address of p variable is %u \n",p);        
p++; 
printf("After decrement: Address of p variable is %u \n",p); // P will now point to the immediate previous location.         
}      
