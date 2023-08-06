#include <stdio.h>
#include <stdlib.h>

int fact_do(int n) {
    int result = 1;
    do {
        result *= n;
        n--;
    } while (n > 1);
    return result;
}

long fact_do_long(long n) {
    long result = 1;
    do {
        result *= n;
        n--;
    } while (n > 1);
    return result;
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 0;
    int x = atoi(argv[1]);
    printf("fact(%d) = %d\n", x, fact_do(x));
    printf("fact_long(%ld) = %ld\n", (long) x, fact_do_long((long) x));
    return 0;
}
