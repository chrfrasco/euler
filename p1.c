#include<stdio.h>

// SUM OF ALL MULTIPLES OF 3 OR 5 BELOW 1000

int multiple_of(int number) {
    return (number % 3) == 0 || (number % 5) == 0;
}

int main() {
    int sum = 0;
    
    for (int i = 0; i < 1000; i++) {
        if (multiple_of(i)) {
            sum = sum + i;
        };
    };

    printf("%i\n", sum);
    return 0;
}
