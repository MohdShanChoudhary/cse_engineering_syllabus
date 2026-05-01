#include<stdio.h>
int main(){
    int arr[6]={4,2,5,6,3,7};
    int n=6,i,j;
    int temp;
    for(i=0;i<n-1;i++){
        for(j=0;j<n-1-i;j++){
            if(arr[j]>arr[j+1]){
            temp=arr[j];
            arr[j]=arr[j+1];
            arr[j+1]=temp;
            }
        }
    }
        printf("print the aray ;");
    for(i=0;i<6;i++){
        printf("%d\t",arr[i]);
    }
}
    
    
    
    
    
    
    
