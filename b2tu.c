#include<stdio.h>

void main()
{
    int a,b,c,max;
    printf("Nhap a=");
    scanf("%d",&a);
    printf("Nhap b=");
    scanf("%d",&b);
    printf("Nhap c=");
    scanf("%d",&c);
    max=a; 
    if(b>max)
    {
          max=b; 
    }
    if(c>max)
      {
        max=c;
     }
    printf("gia tri lon nhat la: %d",max);
    
}