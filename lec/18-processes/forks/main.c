#include <stdio.h>
#include <stdlib.h>
#include "forks.h"

int main(int argc, char** argv) {
    int a = atoi(argv[1]);
    printf("Calling func %d\n", a);
    switch (a) {
        case 1: 
            fork1();
            break;
        case 2:
            fork2();
            break;
        case 3:
            fork3();
            break;
        case 4:
            fork4();
            break;
        case 5:
            fork5();
            break;
        case 6:
            fork6();
            break;
        case 7:
            fork7();
            break;
        case 8:
            fork8();
            break;
        case 9:
            fork9();
            break;
        default:
            fork1();
    }
    return 0;
}

