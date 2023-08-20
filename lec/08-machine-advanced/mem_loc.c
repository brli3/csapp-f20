#include <stdio.h>
#include <stdlib.h>

char hugeArr[1L<<31];// 2 GB
char bigArr[1L<<24]; // 16 MB

int global = 10;

int func() {return 0;}

int main() {
    int local = 20;
    void *pHuge1, *pSmall2, *pHuge3, *pSmall4;
    pHuge1 = malloc(1L<<28); // 256 MB
    pSmall2 = malloc(1L<<8); // 256 B
    pHuge3 = malloc(1L<<32); // 4 GB
    pSmall4 = malloc(1L<<8); // 256 B
    printf("func: %p\n", func);
    printf("main: %p\n", main);
    printf("&global: %p\n", &global);
    printf("bigArr: %p\n", bigArr);
    printf("hugeArr: %p\n", hugeArr);
    printf("pSmall2: %p\n", pSmall2);
    printf("pSmall4: %p\n", pSmall4);
    printf("pHuge3: %p\n", pHuge3);
    printf("pHuge1: %p\n", pHuge1);
    printf("&local: %p\n", &local);
    printf("End of main\n");
    return 0;
}
