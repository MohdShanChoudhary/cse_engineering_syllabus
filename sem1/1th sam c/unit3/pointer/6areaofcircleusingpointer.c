#include<stdio.h>
#define pi 3.14;
int main (){
    int r,area;
    r=5;
    int *prt;
    prt=&r;
    area=(*prt)*(*prt)*pi;
    printf("%d",area);

}
