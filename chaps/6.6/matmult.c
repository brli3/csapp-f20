#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "matops.h"

typedef void (*MatrixMultFunc) (double[N][N], double[N][N], double[N][N]);

double getCpuTime(MatrixMultFunc func, 
        double a[N][N], double b[N][N], double c[N][N]) {
    setMatrixZero(c);
    clock_t start, end;
    start = clock();
    func(a, b, c);
    end = clock();
    return (double) (end - start) / CLOCKS_PER_SEC;
}

int main() {
    srand(time(NULL));

    static double a[N][N];
    static double b[N][N];
    static double c[N][N];

    setMatrixRandom(a);
    setMatrixRandom(b);
    setMatrixZero(c);

    /*
    puts("Matrix A: \n");
    displayMatrix(a);
    puts("Matrix B: \n");
    displayMatrix(b);
    */


    puts("Matrix Mult with IJK:");
    printf("CPU time: %e \n", getCpuTime(matrixMultIJK, a, b, c));

    puts("Matrix Mult with JKI:");
    printf("CPU time: %e \n", getCpuTime(matrixMultJKI, a, b, c));

    puts("Matrix Mult with KIJ:");
    printf("CPU time: %e \n", getCpuTime(matrixMultKIJ, a, b, c));

    return 0;
}
