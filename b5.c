#include<stdio.h>
#include<math.h>

int x;
int s=0,i;
void nhap(){
    printf("Nhap mot so nguyen duong \n");
    scanf("%d", &x);
}
main()
{    

    nhap();
    for(i=1;i<x;i++)
    {
        if(x%i== 0)
        {
            s=s+i;
        }        
    } 
    if(s==x)
    {
        printf("%d la so hoan hao",x);
    }
    else
    {
        printf("%d khong phai la so hoan hao",x);
    }
        
}