#include <stdio.h>
#include "globals.h"

int x = 1;

void f();

int main() {
    f();
    printf("x = %d\n", x);
    return 0;
}
