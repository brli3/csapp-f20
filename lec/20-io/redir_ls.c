#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/wait.h>

#define DEF_ACCESS O_WRONLY | O_CREAT
#define DEF_PERMISSION S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH

int main(int argc, char** argv) {
    if (argc != 2) {
        printf("Usage: ./redir_ls filename\n");
        exit(0);
    }
    char* prog = "/bin/ls";
    char* args[3] = {prog, "-l", NULL};
    pid_t pid = fork();
    if (pid == 0) {
        // child
        printf("control in child: pid=%d, ppid=%d\n", getpid(), getppid());
        int fd = open(argv[1], DEF_ACCESS, DEF_PERMISSION);
        printf("fd=%d STDOUT=%d\n", fd, STDOUT_FILENO);
        dup2(fd, STDOUT_FILENO);
        if (execve(args[0], args, NULL) < 0) {
            printf("%s command not found\n", prog);
            exit(0);
        }
    } else {
        printf("control in parent: pid=%d, ppid=%d\n", getpid(), getppid());
        waitpid(-1, NULL, 0);
    }
                
    return 0;
}
