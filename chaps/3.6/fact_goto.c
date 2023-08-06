#include <stdio.h>
#include <stdlib.h>

long fact_goto(long n) {
    long result = 1;
    int i = 2;
    goto test;
loop:
    result *= i;
    i++;
test:
    if (i <= n) goto loop;
    return result;
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 0;
    long n = (long) atoi(argv[1]);
    printf("factorial(%ld) = %ld\n", n, fact_goto(n));
    return 0;
}
