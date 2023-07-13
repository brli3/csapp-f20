#include <stdio.h>

int leastByte(int x) {
    return x & 0xff;
}

int complementAllButLeast(int x) {
    return x ^ ~0xff;
}

int leastOnes(int x) {
    return x | 0xff;
}

int main() {
    int x = 0x87654321;
    printf("x = 0x%x\n", x);
    printf("least byte: 0x%x\n", leastByte(x));
    printf("Completement all but least: 0x%x\n", complementAllButLeast(x));
    printf("least to ones: 0x%x\n", leastOnes(x));
    return 0;
}
