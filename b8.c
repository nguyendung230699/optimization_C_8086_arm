
#include<stdio.h>
int a[50];
int i,n,tg,max,j,s=0;
main()
{    
 
    printf("nhap vao so phan tu: "); 
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {        
        scanf("%d", &a[i]);
    }
    max=a[0];
    for(i=1;i<n;i++)
    {
        if(a[i]>max)
        {
            max =a[i];
        }
    }
    printf("\nSo lon nhat =%d",max);
    printf("\nvi tri cua gia tri lon nhat trong day la: ");
    for(i=0;i<n;i++)
    {
        if (a[i]==max)
        {
            printf("%6d", i+1);
        }
    }

}
