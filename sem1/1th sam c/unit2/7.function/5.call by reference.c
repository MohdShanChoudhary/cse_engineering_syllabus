#include<stdio.h> 
int sum(int*p1,int*p2){
    int summ;
    summ=*(p1)+*(p2);
    printf("summ");


}
int main (){

   int a=1,b=4;
   sum(&a,&b);
    
    
    
}