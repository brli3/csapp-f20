#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>

typedef unsigned char* bytePointer;

void showBytes(bytePointer start, size_t len) {
    for (size_t i = 0; i < len; i++) {
        printf(" %.2x", *(start + i));
    }
    puts("\n");
}

void showInt(int x) {
    showBytes((bytePointer) &x, sizeof(int));
}

void showShort(short x) {
    showBytes((bytePointer) &x, sizeof(short));
}

void showFloat(float x) {
    showBytes((bytePointer) &x, sizeof(float));
}

void showPointer(void* x) {
    showBytes((bytePointer) &x, sizeof(void*));
}

int main() {
    int a = 15213;
    printf("a=%d\n", a);
    showInt(a);

    int *pa = &a;
    printf("pa=%p\n", pa);
    showPointer(pa);

    char *str = NULL;
    str = (char *) malloc(7 * sizeof(char));
    strcpy(str, "abcABC\0");
    printf("str=%s\n", str);
    printf("str=%p\n", str);
    printf("str[]=");
    for (int i = 0; str[i] != '\0'; i++) {
        printf("%c", str[i]);
    }
    puts("\n");
    printf("str[]=");
    for (int i = 0; str[i] != '\0'; i++) {
        printf("0x%x ", str[i]);
    }
    puts("\n");
    if (str != NULL) {
        showPointer(str);
    }

    int *pa2 = NULL;
    pa2 = (int *) malloc(sizeof(int));
    if (pa2 != NULL) {
        printf("pa2=%p\n", pa2);
        showPointer(pa2);
    }
    return 0;
}

