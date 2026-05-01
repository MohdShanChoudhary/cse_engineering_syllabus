#include<stdio.h>
int main (){
    int i,numofsi;
    float p,r,t,si;
    printf(" Enter the number of si do you wan to calculate ;");
    scanf("%d",&numofsi);
    for(i=1;i<=numofsi;i++){
        printf("Enter the value of p;");
        scanf("%f",&p);
        printf("Enter the value of r;");
        scanf("%f",&r);   
        printf("Enter the time;");
        scanf("%f",&t);
        si=p*r*t/100;
        printf("%.2f",si);
        
       
    }
}