#include<stdio.h>

void main()
{    
    int a[50];
    int i,n,j,kt;
    printf("Nhap so luong phan tu:");
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    }    
    printf("\nCac so nguyen to co trong  mang va vi tri cac so do trong mang la:");
    for(i=0;i<n;i++)
    {
        kt=0;
        for(j=2;j<=a[i]/2;j++)
        {
            if(a[i]%j==0)
            kt=1;    
        }
        if(kt==0)
        printf("\nso nguyen to %d vi tri %d trong mang ", a[i], i );
    }

}
