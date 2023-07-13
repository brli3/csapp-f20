#include <stdio.h>
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

void showFloat(float x) {
    showBytes((bytePointer) &x, sizeof(float));
}

void showPointer(void* x) {
    showBytes((bytePointer) &x, sizeof(void*));
}

int main() {
    int a = 12345;
    printf("a=0x%x\n", a);
    printf("a=%d\n", a);
    printf("&a=%p\n", &a);
    showInt(a);

    float x = (float) a;
    //printf("x=0x%x\n", x);
    printf("x=%.1f\n", x);
    printf("&x=%p\n", &x);
    showFloat(x);

    int* pA = &a;
    //printf("pA=0x%x\n", pA);
    printf("pA=%p\n", pA);
    printf("&pA=%p\n", &pA);
    showPointer(pA);

    const char* m = "mnopqr";
    printf("%s\n", m);
    showBytes((bytePointer) m, strlen(m));

}

