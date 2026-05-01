// We can create a null pointer by assigning null value during the pointer declaration. This method is useful when 
// you do not have any address assigned to the pointer. A null pointer always contains value 0.

#include <stdio.h>
int main()
{
	int *p = NULL; 	//null pointer
	printf("the value inside the variable is  %p \n",p);
	return 0;
}
