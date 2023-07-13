#include <stdio.h>

int main() {
    int a = 0x89ABCDEF;
    int mask = 0xFF;
    printf("a = %x\n", a);
    printf("mask = %x\n", mask);
    printf("masked = %x\n", a & mask);
    printf("sizeof(mask) = %lu\n", sizeof(mask));

    printf("mask one = %x\n", ~0);
    printf("mask one = %d\n", ~0);
    printf("sizeof(mask one) = %lu\n", sizeof(~0));
    printf("masked by one = %x\n", a & ~0);
}
