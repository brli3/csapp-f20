#include <stdio.h>

void echo() {
    char buf[4];
    puts("Type a string:");
    gets(buf);
    puts(buf);
}

int main() {
    echo();
    return 0;
}
