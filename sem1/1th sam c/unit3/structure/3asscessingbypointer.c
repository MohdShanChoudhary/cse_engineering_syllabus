#include<stdio.h> 
  struct Point 
{ 
   int x;
   int y; 
}; 
  int main() 
{ 
   struct Point p1 = {1, 2}; 
     // p2 is a pointer to structure p1 
   struct Point *p2 = &p1; 
     // Accessing structure members using structure pointer 
   printf("%d %d", p2->x, p2->y); 
   return 0; 
}

// #include<stdio.h>
// int main(){
// 	int i = 3;
// 	int *j;
// 	j = &i;
	
// 	printf("%d ",*j);
// 	return 0;
// }
