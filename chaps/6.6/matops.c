#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "matops.h"

double getRandomDouble() {
    return ((double) rand() / RAND_MAX) * 9.0;
}

double** createMatrixZero() {
    double** rows = (double **) calloc(N, sizeof(double *));
    for (int i = 0; i < N; i++) {
        rows[i] = (double *) calloc(N, sizeof(double));
    }
    return rows;
}

void setMatrixZero(double mat[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            mat[i][j] = 0.0;
        }
    }
}

void setMatrixRandom(double mat[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            mat[i][j] = getRandomDouble();
        }
    }
}

bool equalMatrices(double a[N][N], double b[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            if (a[i][j] != b[i][j]) return false;
        }
    }
    return true;
}

void displayMatrix(double mat[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%5.2f  ", mat[i][j]);
        }
        puts("");
    }
    puts("");
}

void displayMatrixPointer(double* mat) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%5.2f  ", mat[i * N + j]);
        }
        puts("");
    }
    puts("");
}

void matrixMultIJK(double a[N][N], double b[N][N], double c[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            double sum = 0.0;
            for (int k = 0; k < N; k++) {
                sum += a[i][k] * b[k][j];
            }
            c[i][j] = sum;
        }
    }
}

void matrixMultJKI(double a[N][N], double b[N][N], double c[N][N]) {
    for (int j = 0; j < N; j++) {
        for (int k = 0; k < N; k++) {
            double r = b[k][j];
            for (int i = 0; i < N; i++) {
                c[i][j] += a[i][k] * r;
            }
        }
    }
}
void matrixMultKIJ(double a[N][N], double b[N][N], double c[N][N]) {
    for (int k = 0; k < N; k++) {
        for (int i = 0; i < N; i++) {
            double r = a[i][k];
            for (int j = 0; j < N; j++) {
                c[i][j] += r * b[k][j];
            }
        }
    }
}
