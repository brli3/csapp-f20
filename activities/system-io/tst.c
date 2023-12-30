#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Hello ");
    write(STDOUT_FILENO, "world\n", 6);
    return 0;
}
