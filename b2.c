#include<stdio.h>
int a,b,c,max;
void nhap(){
    printf("Nhap a=");
    scanf("%d",&a);
    printf("Nhap b=");
    scanf("%d",&b);
    printf("Nhap c=");
    scanf("%d",&c);
}
void main()
{
    
    nhap();
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