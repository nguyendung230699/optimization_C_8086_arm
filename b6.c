#include<stdio.h>

void NhapMang(int a[],int n)

{

           int i;

           for(i=0;i<n;i++)

         {

             printf("Nhap a[%d]: ",i);

            scanf("%d",&a[i]);

         }

}

void In(int a[],int n)

{
      int i;

      int s=0;

    printf("Tong cac so le trong mang la: \n");                                  

      for(i=0;i<n;i++)
     {
      s+=a[i];
     }

    printf("%d",s);

}

int main()

{

    int n;

    int a[n];

   printf("Nhap n: ");

   scanf("%d",&n);

   NhapMang(a, n);

    In(a, n);

}
