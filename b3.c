#include<stdio.h>
int x;
main()
{    
    
    printf("Nhap x:");
    scanf("%d",&x);
    if(x%2==0)
    {
        printf("%d la so chan",x);
    }
    else
    {
        printf("%d la so le",x);
    }
}