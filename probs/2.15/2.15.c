#include <stdio.h>
#include <assert.h>

int equals(int x, int y) {
    return !(x ^ y);
}

int main () {
    assert(equals(3, 7) == 0);
    assert(equals(3, 3) == 1);
    return 0;
}
