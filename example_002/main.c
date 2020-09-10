/* main.c simple program to test assembler program */

#include <stdio.h>

extern char test (char *name);

int main(void)
{
	char name[] = "ARM";
	char result;
	result = test(name);
	printf("%c\n", result);
    return 0;
}
