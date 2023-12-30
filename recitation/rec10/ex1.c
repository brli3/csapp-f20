#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid;
    pid = fork();
    printf("pid addr: %p, pid: %d\n", &pid, pid);
    return 0;
}

