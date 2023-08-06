#include <stdio.h>
#include <stdlib.h>

long fibonacci_gd_goto(long n)
{
    long i = 2;
    long next, first = 0, second = 1;
    if (n <= 1)
        goto done;
loop:
    next = first + second;
    first = second; second = next;
    i++;
    if (i <= n)
        goto loop;
done:
    return n;
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 1;
    long n = (long) atoi(argv[1]);
    printf("fibonacci(%ld) = %ld\n", n, fibonacci_gd_goto(n));
    return 0;
}
