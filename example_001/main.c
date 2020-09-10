/* main.c simple program to test assembler program */

#include <stdio.h>

extern void test(long long int* a);

int main(void)
{
long long int a = 8;
    test(&a);
    printf("a = %lld\n", a);
    return 0;
}
