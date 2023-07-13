#include <stdio.h>
#include <math.h>
#include <string.h>

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
    short a = 12345;
    short ma = -a;
    printf("a=%d\n", a);
    showShort(a);
    printf("ma=%d\n", ma);
    showShort(ma);

    printf("unsigned ma: %lu\n", (size_t) 0xcfc7);

    printf("unsigned ma: %u\n", (unsigned short) ma);

    printf("unsigned ma compl: %d\n", (ma + (int) pow(2, 16)));

    unsigned short usma = ma;
    unsigned uma = usma;
    int ima = ma;

    printf("usma = %d\n", usma);
    showBytes((bytePointer) &usma, sizeof(unsigned short));
    printf("uma = %d\n", uma);
    showBytes((bytePointer) &uma, sizeof(unsigned));
    printf("ima = %d\n", ima);
    showBytes((bytePointer) &ima, sizeof(int));
    return 0;
}

