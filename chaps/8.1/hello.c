#include <unistd.h>

int main(int argc, char** argv) {
    write(1, "Hello world\n", 13);
    _exit(0);
}
