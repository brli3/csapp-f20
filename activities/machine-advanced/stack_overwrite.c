typedef struct {
    int a[2]; // 8 bytes
    double d; // 8 bytes
} struct_t; // 16 bytes

double fun(int i) {
    volatile struct_t s;
    s.d = 3.14;
    s.a[i] = 10230405;
    return s.d;
}

int main() {
    double res = fun(6);
    return 0;
}
