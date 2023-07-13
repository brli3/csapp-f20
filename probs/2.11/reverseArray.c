#include <stdio.h>

#define ARRAY_LEN(arr) sizeof(arr) / sizeof(arr[0])

void inplaceSwap(int* x, int* y) {
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

void reverseArray(int arr[], int len) {
    int i = 0, j = len - 1;
    //while (i <= j) {
    while (i < j) {
        inplaceSwap(&arr[i], &arr[j]);
        i++; 
        j--;
    }
}

void printArray(int arr[], int len) {
    for (int i = 0; i < len; i++) {
        printf("%d ", arr[i]);
    }
    puts("\n");
}

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int len = ARRAY_LEN(arr);
    printArray(arr, len);
    reverseArray(arr, len);
    printArray(arr, len);
}
