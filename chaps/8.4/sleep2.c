#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char** argv) {
    unsigned int secs = 5;
    if (argc == 2) {
        secs = atoi(argv[1]);
    }
    printf("Start of program");

    pid_t pid = fork();
    if (pid < 0) return 0;
    if (pid == 0) {
        printf("child process sleep 2 secs\n");
        sleep(2);
        printf("child process done sleeping\n");
    } else {
        printf("parent process sleep 5 secs\n");
        sleep(5);
        printf("parent process done sleeping\n");
    }

    printf("Resumed program.\n");

    return 0;
}
