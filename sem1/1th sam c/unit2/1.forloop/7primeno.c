#include<stdio.h>
int main (){
    int  i,n,cout=0;
    printf(" Enter the value of n ;");
    scanf("%d",&n);
    for(i=1;i<=n;i++){
    if(n%i==0){
        cout++;
    }

    }
        if(cout==2){
        printf("no is prime;");

    }
    else{
        printf("not prime number ");
}
}