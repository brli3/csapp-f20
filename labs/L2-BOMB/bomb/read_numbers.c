#include <stdio.h>

int read_numbers(char *input, int *a1, int *a2, int *a3, 
        int *a4, int *a5, int *a6) {
    int result = sscanf(input, "%d %d %d %d %d %d", 
            a1, a2, a3, a4, a5, a6);
    return result;
}

int main(int argc, char *argv[]) {
    int a1, a2, a3, a4, a5, a6;

    if (argc < 2) {
        printf("Usage: %s a1 a2 a3 a4 a5 a6\n", argv[0]);
        return 1;
    }

    int result = read_numbers(argv[1], &a1, &a2, &a3, &a4, &a5, &a6);
    if (result == 0) {
        printf("sscanf failed");
        return 1;
    }
    printf("Numbers: %d %d %d %d %d %d\n", 
            a1, a2, a3, a4, a5, a6);
    return 0;
}
