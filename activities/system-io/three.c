#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(void) {
    // Buffer only one line at a time.
    setvbuf(stdout, NULL, _IOLBF, 0);

    printf("believe ");
    write(STDOUT_FILENO, "in ", 3);
    printf("yourself!\n");

    printf("never\n");
    write(STDOUT_FILENO, "give\n", 5);
    printf("up!\n");

    printf("keep ");
    fflush(stdout);
    write(STDOUT_FILENO, "it ", 3);
    printf("cool :)\n");

    return 0;
}
