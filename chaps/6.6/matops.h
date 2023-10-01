#include <stdbool.h>

#define N 1000

double getRandomDouble();

double** createMatrixZero();

void setMatrixZero(double mat[N][N]);

void setMatrixRandom(double mat[N][N]);

bool equalMatrices(double a[N][N], double b[N][N]);

void displayMatrix(double mat[N][N]);

void displayMatrixPointer(double* mat);

void matrixMultIJK(double a[N][N], double b[N][N], double c[N][N]);

void matrixMultJKI(double a[N][N], double b[N][N], double c[N][N]);

void matrixMultKIJ(double a[N][N], double b[N][N], double c[N][N]);

