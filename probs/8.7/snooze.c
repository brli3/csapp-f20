#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <errno.h>


void sigint_handler(int sig) {
    return;
}

int main(int argc, char** argv) {
    if (signal(SIGINT, sigint_handler) == SIG_ERR) {
        fprintf(stderr, "Signal error: %s\n", strerror(errno));
    }
    unsigned int a = atoi(argv[1]);
    unsigned int b = sleep(a);
    printf("Slept %d out of %d secs\n", a - b, a);
    return 0;
}
