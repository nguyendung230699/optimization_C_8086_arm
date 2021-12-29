#include<stdio.h>

void main()
{            
    int x,y,a,b;
    do
    {
        printf("Nhap a,b = ");
        scanf("%d%d",&a,&b);
    }
    while(a<=0 || b<=0);
    x=a;
    y=b;
    while(a!=b)
    {
        if(a>b)
        {
            a-=b;
        }
        else
        {
            b-=a;    
        }
    }
    int bc = (x*y)/a;
    printf("Uoc chung lon nhat la %d",a);
    printf("\nBoi chung nho nhat la %d",bc);
    
}