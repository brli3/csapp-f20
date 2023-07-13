#include <stdio.h>

float sumElem(float a[], size_t length) {
    float result = 0;
    // length - 1 performs unsigned arithmatics, i.e. + 0xffffffff
    //for (int i = 0; i <= length - 1; i++) {
    for (int i = 0; i < length; i++) {
        result += a[i];
    }
    return result;
}

int main () {
    float a[] = {1.2, 2.3, 3.4};
    printf("Sum= %f\n", sumElem(a, 0));
    unsigned x = 0;
    printf("unsigned 0+1= %u\n", x+1u);
    printf("unsigned 0-1= %u\n", x-1u);
    return 0;
}
