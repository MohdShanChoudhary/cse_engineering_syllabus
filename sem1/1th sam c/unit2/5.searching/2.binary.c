#include<stdio.h>
int main (){
    int i,max,min,mid,sr;
    int arr[100]={1,2,3,4,5,6,7,8,9};
    min=0;
    max=8;
    mid=(max+min)/2;
    printf("printf enter the no. you wanr to search ;");
    scanf("%d",&sr);
    while(min<=max){
        mid=(max+min)/2;
        
        if(arr[mid]==sr){
        printf("the %d is in the %d index ", sr,mid);
        break;
        }
        else if(arr[mid]<sr){
            min=mid+1;
        }
        else if(arr[mid]>sr){
           max=mid-1;
        }
    }
    
}