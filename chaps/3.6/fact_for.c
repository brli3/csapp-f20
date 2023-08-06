#include <stdio.h>
#include <stdlib.h>

long fact_for(long n) {
    long result = 1;
    for (int i = 2; i <= n; i++) {
        result *= i;
    }
    return result;
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 0;
    long n = (long) atoi(argv[1]);
    printf("factorial(%ld) = %ld\n", n, fact_for(n));
    return 0;
}
