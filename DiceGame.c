#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define MAX 100

int main(){
    int i, j, n;
    char name[MAX];
    srand(time(NULL));
    printf("What is your name?\n");
    scanf("%s", name);
    printf("Hello, %s!\n", name);
    i = rand()%6+1;
    j = rand()%6+1;
    printf("Rolling the dice...\n");
    printf("Die 1:%d\n", i);
    printf("Die 2:%d\n", j);
    printf("Total value:%d\n",i+j);
    n = i + j;
    if(n > 7){
        printf("%s won!\n", name);
    }
    else{
        printf("%s lost...\n", name);
    }
    return 0;

}