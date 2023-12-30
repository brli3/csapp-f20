#include <stdio.h>
#include <unistd.h>

extern char** environ;

int main() {
    char* args[3] = {"/bin/echo", "Hi 18123", NULL};
    execve(args[0], args, environ);
    printf("Hi 15123");
    return 0;
}
