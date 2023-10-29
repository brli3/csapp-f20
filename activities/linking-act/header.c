void sum(int* a, int n) {
    for (int i = 1; i < n; i++) {
        a[i] = a[i] + a[i - 1];
    }
}
