#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include "forks.h"

void fork1() {
    pid_t pid;
    int x = 1;

    pid = fork();

    if (pid == 0) {
        printf("child x=%d\n", ++x);
        return;
    }

    printf("parent x=%d\n", --x);
    return;
}

void fork2() {
    printf("L0\n");
    fork();
    printf("L1\n");
    fork();
    printf("Bye\n");
}

void fork3() {
}

void fork4() {
    printf("L0\n");
    if (fork() != 0) {
        printf("L1\n");
        if (fork() != 0) {
            printf("L2\n");
        }
    }
    printf("Bye\n");
}

void fork5() {
    printf("L0\n");
    if (fork() == 0) {
        printf("L1\n");
        if (fork() == 0) {
            printf("L2\n");
        }
    }
    printf("Bye\n");
}

void fork6() {
}

void fork7() {
    if (fork() == 0) {
        /* child */
        printf("Terminating child, PID = %d\n", getpid());
        exit(0);
    } else {
        printf("Running parent, PID = %d\n", getpid());
        while (1) {
            ; /* infinite loop */
        }
    }
}

void fork8() {
    if (fork() == 0) {
        printf("Running child, PID = %d\n", getpid());
        while (1) {
            ; /* infinite loop */
        }
    } else {
        printf("Terminating parent, PID = %d\n", getpid());
        exit(0);
    }
}

void fork9() {
    int child_status;
    if (fork() == 0) {
        printf("HC from child\n");
        exit(0);
    }
    printf("HP from parent\n");
    wait(&child_status);
    printf("CT child has terminated\n");
    printf("Bye\n");
}

