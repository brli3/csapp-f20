#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char** argv) {
    unsigned int secs = 5;
    if (argc == 2) {
        secs = atoi(argv[1]);
    }
    printf("Start of program, pause for %d sec\n", secs);

    fork();
    sleep(secs);

    printf("Resumed program.\n");

    return 0;
}
