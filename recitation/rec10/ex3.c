#include <stdio.h>
#include <unistd.h>

extern char** environ;

int main() {
    char* args[3] = {"/bin/balahbalah", "Hi 15513", NULL};
    execve(args[0], args, environ);
    printf("Hi 14523\n");
    return 0;
}
