#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int a = 9;
    pid_t pid = fork();
    if (pid == 0) {
        printf("p1: a = %d\n", a--);
    }
    printf("p2: a = %d\n", a++);
    exit(0);
}
