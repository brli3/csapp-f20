#include <stdio.h>

/* Set x to 1 when m is 1 */
int bis(int x, int m) {
    return x | m;
}

/* Set x to 0 when m is 1 */
int bic(int x, int m) {
    return x & ~m;
}

int boolOR(int x, int y) {
    int result = bis(x, y);
    return result;
}

int boolXOR(int x, int y) {
    int result = bis(bic(x, y), bic(y, x));
    return result;

int main() {

    return 0;
}
