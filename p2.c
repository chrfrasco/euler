#include<stdio.h>

int fib_next(int prev, int curr) {
    return prev + curr;
};

int get_nth_fib(int n) {
    int prev =0, curr  = 1;

    for (int i = 0; i < n; i++) {
        int temp = curr;
        curr = fib_next(prev, curr);
        prev = temp;
    };

    return curr;
}

int main() {
    int n = 4;
    printf("%i\n", get_nth_fib(n));
    return 0;
}
