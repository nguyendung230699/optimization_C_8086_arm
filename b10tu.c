#include<stdio.h>

void main()
{    
    int a[50];
    int i,n;
    printf("Nhap so phan tu mang: ");
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    }
    int v;
    printf("\nNhap vao gia tri can tim: ");
    scanf("%d", &v);
    int j=0;   
    for( j =0;j < n; ++j){
        if(a[j] == v){
            printf("\nTim thay so %d tai chi so %d!", v, j);
        }
    }
	
 
}
