#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>
#include <errno.h>

void sigint_handler(int sig) {
    printf("So you think you can stop the bomb with ctrl-c, do you?\n");
    sleep(2);
    printf("Well..\n");
    fflush(stdout);
    sleep(1);
    printf("OK. :-)\n");
    exit(0);
}

int main(int argc, char** argv) {
    // Install the SIGINT handler
    if (signal(SIGINT, sigint_handler) == SIG_ERR) {
        fprintf(stderr, "signal error, %s", strerror(errno));
    }
    // wait for the receipt of a signal
    pause();
    return 0;
}
