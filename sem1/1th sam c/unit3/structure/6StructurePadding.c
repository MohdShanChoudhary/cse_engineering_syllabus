//////////////////////////////////////////////////////////////////////////////////

// C program to illustrate 
// size of struct 
#include <stdio.h> 
  int main() 
{ 
      struct A { 
          // sizeof(int) = 4                          //  
        int x; 
        // Padding of 4 bytes 
          // sizeof(double) = 8 
        double z; 
          // sizeof(short int) = 2 
        short int y; 
        // Padding of 6 bytes 
    }; 
      printf("Size of struct: %ld", sizeof(struct A)); 
      return 0; 
} 


//////////////////////////////////////////////////////////////////////////////


// C program to illustrate 
// size of struct 
#include <stdio.h> 
  int main() 
{ 
      struct A { 
          // sizeof(int) = 4 
        int x; 
        // Padding of 4 bytes 
          // sizeof(double) = 8 
        double z; 
          // sizeof(short int) = 2 
        short int y; 
        // Padding of 6 bytes 
    }; 
      printf("Size of struct: %ld", sizeof(struct A)); 
      return 0; 
} 


////////////////////////////////////////////////////////////////////////////




// C program to illustrate 
// size of struct 
#include <stdio.h> 
  int main() 
{ 
      struct B { 
        // sizeof(double) = 8 
        double z; 
          // sizeof(int) = 4 
        int x; 
          // sizeof(short int) = 2 
        short int y; 
        // Padding of 2 bytes 
    }; 
      printf("Size of struct: %ld", sizeof(struct B)); 
      return 0; 
} 

///////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////






// C program to illustrate 
// size of struct 
#include <stdio.h> 
  int main() 
{ 
      struct C { 
        // sizeof(double) = 8 
        double z; 
          // sizeof(short int) = 2 
        short int y; 
        // Padding of 2 bytes 
          // sizeof(int) = 4 
        int x; 
    }; 
      printf("Size of struct: %ld", sizeof(struct C)); 
      return 0; 
} 



///////////////////////////////////////////////////////////////////////////