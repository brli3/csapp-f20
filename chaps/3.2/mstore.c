#include <stdio.h>
#include <stdlib.h>

long mult2(long x, long y) {
    return x * y;
}

void multstore(long x, long y, long *dest) {
    long t = mult2(x, y);
    *dest = t;
}

int main(int argc, char *argv[]) {
    if (argc < 3) return 1;
    long x = atoi(argv[1]);
    long y = atoi(argv[2]);
    long z = 0L;
    multstore(x, y, &z);
    printf("%ld x %ld --> %ld\n", x, y, z);
}
