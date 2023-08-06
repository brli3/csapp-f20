#include <stdio.h>
#include <stdlib.h>

long fibonacci(long n) {
    long a = 0;
    long b = 1;
    long result = 0;
    if (n <= 1) return n;
    while (n >= 2) {
        result = a + b;
        a = b;
        b = result;
        n--;
    }
    return result; 
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 1;
    long n = (long) atoi(argv[1]);
    printf("fibonacci(%ld) = %ld\n", n, fibonacci(n));
    return 0;
}
