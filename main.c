#include <stdio.h>

float solve_equation(float* a, float* b, float* res, size_t size);

int main(int argc, char *argv[]) {

    float a[5] = {2.34, 2, 5.65, 1.12, 5.55};
    float b[5] = {5, 4, 3, 2, 1};
    float res[5] = {1, 1, 1, 1, 1};

    if (sizeof(a) == sizeof(b)) {
        solve_equation(a, b, res, sizeof(a));
    }
}