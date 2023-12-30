#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

unsigned int wakeup(unsigned int secs) {
    unsigned int res = sleep(secs);
    printf("Woke up at %u secs.\n", secs);
    return res;
}

int main(int argc, char** argv) {
    unsigned int secs = 5;
    if (argc == 2) {
        secs = atoi(argv[1]);
    }
    wakeup(secs);
    return 0;
}
