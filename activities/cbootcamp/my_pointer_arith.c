#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 100

int main(int argc, char** argv) {
    char* pA = malloc(BUFFER_SIZE * sizeof(char));

    printf("pA @ %p \n", pA);

    char* pB = pA + 5;

    char* pC = (char*) ((int*) pA + 5) + 2;

    char* pD = (char*) ((short**) pA + 3) + 1;

    free(pA);
}
