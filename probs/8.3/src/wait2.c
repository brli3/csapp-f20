#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    if (fork() == 0) {
        printf("p1: 9, pid=%d\n", getpid()); fflush(stdout);
    } else {
        printf("p2: 0, pid=%d\n", getpid()); fflush(stdout);
        waitpid(-1, NULL, 0);
    }
    printf("p3: 3, pid=%d\n", getpid()); fflush(stdout);
    printf("p3: 6, pid=%d\n", getpid()); exit(0);
}
