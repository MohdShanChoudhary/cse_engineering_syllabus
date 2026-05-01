#include<stdio.h>
int main(){
    int i,fact;
    fact=1;
    for(i=1;i<=3;i++){  // fact of 3 
        fact=fact*i;
    }
    printf("%d",fact);
}