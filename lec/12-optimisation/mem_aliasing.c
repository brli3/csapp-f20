#include <stdio.h>

/**a[n][n], b[n]**/
void sum_rows1(double* a, double* b, long n) {
    for (int i = 0; i < n; i++) {
        b[i] = 0.0;
        for (int j = 0; j < n; j++) {
            b[i] += a[n * i + j];
        }
    }
}

void sum_rows2(double* a, double* b, long n) {
    for (int i = 0; i < n; i++) {
        double sum = 0.0;
        for (int j = 0; j < n; j++) {
            sum += a[n * i + j];
        }
        b[i] = sum;
    }
}

int main(int argc, char* argv[]) {
    double A[9] = { 0, 1, 2,
                    4, 8, 7,
                    2, 6, 9 };
    //double B[3] = {4, 8, 7};
    double* B = A + 3;
    sum_rows1(A, B, 3);
    return 0;
}
