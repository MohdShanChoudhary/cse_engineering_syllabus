#include<stdio.h>
int main(){
	int i = 3;
	int *j=&i;
	
	printf("%d ",*j);  // yaha to value print hogi 
    j++;
	printf("%d ",*j);  
    // ya jo ha ya value print krta ha magar jb upar j++ hua to isma address ke value bhad
    // gai ab address print hoga .
	return 0;
}





// #include<stdio.h>
// int main(){
// 	int a = 130;
// 	char *ptr;
// 	ptr = (char *)&a;
// 	printf("%d ",*ptr);
// 	return 0;
// }
