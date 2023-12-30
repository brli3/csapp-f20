#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
    char* args[3] = {"/usr/bin/ls", "-ahl", NULL};
    pid_t pid = fork();
    if (pid != 0) {
        printf("Parent: created a child %d\n", pid);
    } else {
        printf("Child: exec-ing new program now\n");
        execv(args[0], args);
    }
    printf("This line is printed by parent only.\n");
    exit(0);
}
