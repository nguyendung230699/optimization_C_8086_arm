#include<stdio.h>

void main()
{    
    int a[50];
    int i,n,s=0;
    printf("Nhap so phan tu mang: ");
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    }    
    
    for(i=0;i<n;i++)
    {
        s +=a[i];
    }
    printf("\nTong Mang vua nhap la : %d",s);
   
}
