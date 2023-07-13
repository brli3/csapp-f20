#include <stdio.h>

void inplaceSwap(int* x, int* y) {
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

int main() {
    int x = 1, y = 2;
    printf("x = %d, y = %d\n", x, y);
    inplaceSwap(&x, &y);
    printf("x = %d, y = %d\n", x, y);
}
