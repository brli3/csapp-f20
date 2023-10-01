#include <stdio.h>
#include <stdlib.h>

int main() {
    char *this_course = "15213";
    char bad[3] = { 'b', 'a', 'd' };
    char *zero = "0";
    char *zero2 = "012";

    printf("atoi(this_course): %d\n", atoi(this_course));
    printf("atoi(bad): %d\n", atoi(bad));
    printf("atoi(zero): %d\n", atoi(zero));
    printf("atoi(zero2): %d\n", atoi(zero2));

    return 0;
}
