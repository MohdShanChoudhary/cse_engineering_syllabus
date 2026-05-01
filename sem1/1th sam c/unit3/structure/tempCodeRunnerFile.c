
#include<stdio.h>
struct address{
    int pincode;
    
};
struct employ{
    int age;
    struct address wadno;
};
int main(){



    struct employ emp;
    
    emp.age=30;
    emp.wadno.pincode=432343;
    printf("%d",emp.age);
    printf("%d",emp.wadno.pincode);
    
}