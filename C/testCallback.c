#include <stdio.h>
#include <stdlib.h>
#define TRUE  0

// test function with "callback"
int callFunc(int a, int b, int (*callback)(int, int));

// callback functions
int sum(int a, int b);
int mult(int a, int b);
int mod(int a,int b);

int main() {
    int f = callFunc(5,6,sum);
    int s = callFunc(5,6,mult);
    int t = callFunc(5,6,mod);
    printf("Called callFunc(5,6) with sum and result %d\n", f);
    printf("Called callFunc(5,6) with mult and result %d\n", s);
    printf("Called callFunc(5,6) with mod and result %d\n", t);
    return TRUE;
}

int callFunc(int a, int b, int (*callback)(int, int)) {
    return callback(a,b);
}

int sum(int a, int b) {
    return a+b;
}

int mult(int a, int b) {
    return a*b;
}

int mod(int a, int b) {
    return a%b;
}
