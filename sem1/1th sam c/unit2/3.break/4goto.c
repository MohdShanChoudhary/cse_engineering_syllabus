/* goto statement is a jump statement which is use
 to transfer of program to one location to another*/

/*

 lablename;    ------>       goto lablename;


*/
 #include<stdio.h>
 int main (){
    int x;
    printf("Enter the value of x ;");
    scanf("%d",&x);
   
    if(x==5){
        goto five;
    }
    else{
        goto notfive;
    }
    notfive:
    printf("notfive");
     five:
    printf("The number is 5 ;");
 }