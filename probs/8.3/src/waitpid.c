#include "utility.h"

#define N 10

int main() {
    int status;

    pid_t pid;

    for (int i = 0; i < N; i++) {
        if ((pid = Fork()) == 0) {
            exit(100 + i);
        }
    }

    while ((pid = waitpid(-1, &status, 0)) > 0) {
        if (WIFEXITED(status)) {
            printf("Child %d terminated normally with exit status=%d\n",
                    pid, WEXITSTATUS(status));
        }
        else {
            printf("Child %d terminated abnormally\n", pid);

        }
    }
    
    if (errno != ECHILD) {
        unix_error("waitpid error");
    }

    return 0;
}

