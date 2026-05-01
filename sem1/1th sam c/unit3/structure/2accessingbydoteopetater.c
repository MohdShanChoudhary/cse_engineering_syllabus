  //Accessing Structure Members
  #include<stdio.h> 
  struct Point 
{ 
   int x;
   int y; 
};
int main() 
{ 
   struct Point p1 ;
  
   // Accessing members of point p1 
   p1.x = 20; // Accessing Structure Members by doth perator
   p1.y=6789;
   printf ("x = %d, y = %d", p1.x, p1.y); 
  
   return 0; 
}
