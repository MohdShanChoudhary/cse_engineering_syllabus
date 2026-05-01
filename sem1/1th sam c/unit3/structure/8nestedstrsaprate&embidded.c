// we can make nested structure by two method 


/////////////////////////////////////////////////////////////////////////////////////////////////
// 1 saprate 
// #include<stdio.h>
// struct address{
//     int pincode;
    
// };
// struct employ{
//     int age;
//     struct address wadno;
// };
// int main(){



//     struct employ emp;
    
//     emp.age=30;
//     emp.wadno.pincode=432343;
//     printf("%d",emp.age);
//     printf("%d",emp.wadno.pincode);
    
// }








/////////////////////////////////////////////////////////////////////////////////////////////


// 2  embedded 



#include<stdio.h>
struct employ{

    int phoneno;
    int no;

    struct date{
        int dob;
        int doj;
    }d;




}p;
int main(){
    p.d.doj=80;
    p.no=43;
    printf("%d",p.d.doj);
    printf("%d",p.no);
}