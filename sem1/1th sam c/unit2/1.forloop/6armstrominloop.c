// // armstorm in c 

#include <stdio.h>
int main (){
    int n,temp,r,sum=0;
    printf("Enter the value of n;");
    scanf("%d",n);
    temp=n;
    while(n>0){
    r=n%10;
    sum=sum+(r*r*r);
    n=n/10;
    
    }
    if(temp==sum){
        printf(" the umber is armstrome ;");

    }
    else{
    printf(" the no is not an arrmtrome ;");
    }
}


// #include <stdio.h>

// int main() {
//     int n, temp, r, sum = 0;

//     printf("Enter the value of n: ");
//     scanf("%d", &n);

//     temp = n;

//     while (n > 0) {
//         r = n % 10;
//         sum = sum + (r * r * r);
//         n = n / 10;
//     }

//     if (temp == sum) {
//         printf("The number is an Armstrong number.\n");
//     } else {
//         printf("The number is not an Armstrong number.\n");
//     }

//     return 0;
// }
