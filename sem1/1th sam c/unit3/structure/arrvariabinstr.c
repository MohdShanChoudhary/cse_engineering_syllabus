#include<stdio.h>
#include<string.h>
struct data{
    int value[20];
    char name[20];

};
int main(){
    struct data e1;
    strcpy(e1.name,"shan");
    printf("%s",e1.name);


}