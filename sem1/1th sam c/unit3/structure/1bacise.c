// // /*Structure is a user-defined datatype in C language which allows us to combine data of different types together.
// // Structure helps to construct a complex data type which is more meaningful. 
// // It is somewhat similar to an Array, but an array holds data of similar type only
// // . But structure on the other hand, can store data of any type, which is practical more useful.

// // For example: If I have to write a program to store Student information, which will have Student's name,
// //  age, branch, permanent address, father's name etc, which included string values, integer values etc, how
// //   can I use arrays for this problem, I will require something which can hold data of different types together
// //   . In structure, data is stored in form of records.*/



// // ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// // #include<stdio.h>

// //  struct structure_tag
// // {
    
// //     //member variable 1
// //     //member variable 2

// // }structure_variables;

// // int main (){

// // // also ther v can declain structure variabels 
// // struct structure_tag shan;

// // }


// // DOTE OPRETOR = STRUCTURE MEMBER OPRETOR


// // //////////////////////////////////////////////////////////////////////////////////////////////////////////////


// // ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// // #include <stdio.h>


// //   struct employ{
// //     char nameleter;
// //     int age;

// //   }e1;

// // int main (){

// //   struct employ e2;
// //   e1.age=10;
// //   e2.age=12;
// //   e1.nameleter='t'; 
// //   printf("e1 age is %d",e1.age);
// //    scanf("\n %c",&e1.nameleter);
// //     printf("letter is %c ",e1.nameleter);
// //    }
 


// // //////////////////////////////////////////////////////////////////////////////////////////////////////////



// #include<stdio.h>
// #include<string.h>
// struct employ{
//   char name[10];
// }e1;
// int main(){
//   scanf("%s",e1.name);
//  //strcpy(e1.name,"shan");
//  printf("%s",e1.name);

// }




// // ////////////////////////////////////////////////////////////////////////////////////////////////////////////


  #include<stdio.h> 
  struct Point 
{ 
   int x, y; 
};
int main() 
{ 
   struct Point p1 = {0, 1}; 
  
   // Accessing members of point p1 
   p1.x = 20; 
   printf ("x = %d, y = %d", p1.x, p1.y); 
  
   return 0; 
}
