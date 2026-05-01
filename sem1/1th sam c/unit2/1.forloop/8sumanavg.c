#include<stdio.h>
int main(){
    int i,n;
    float sum=0,avg;
    for(i=1;i<=10;i++){
        printf("Enter the number %d;",i);
        scanf("%d",&n);
        sum=sum+n;

    }
    avg=sum/10;
    printf("The average of a number is %.2f",avg);
    printf("\nthesum of number is ;%.2f",sum);
    return 0;
}
