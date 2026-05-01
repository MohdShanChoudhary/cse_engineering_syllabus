// 1 . holde garbage dders 
//2.  A pointer is said to be a wild pointer if it is not being initialized to anything. These types of pointers 
//are not efficient because they may point to some unknown memory location which may cause problems in our program 
//and it may lead to crashing of the program. One should always be careful while working with wild pointers.

#include <stdio.h>
int main()
{
int *p; 	//wild pointer
printf("\n%d",*p);
return 0;
}



