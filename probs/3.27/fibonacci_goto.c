#include <stdio.h>
#include <stdlib.h>

long fibonacci(long n) {
    long a = 0;
    long b = 1;
    long result = n;
    goto test;
loop:
    result = a + b;
    a = b;
    b = result;
    n--;
test:
    if (n >= 2) goto loop ;
done:
    return result;
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 1;
    long n = (long) atoi(argv[1]);
    printf("fibonacci(%ld) = %ld\n", n, fibonacci(n));
    return 0;
}
