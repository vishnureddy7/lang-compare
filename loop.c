#include<stdio.h>

int main(){
    unsigned int a;
    for(unsigned int i=0;i<10000000;i++){
        a=i;
    }
    printf("%u\n",a);
    return 0;
}
