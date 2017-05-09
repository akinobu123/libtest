#include <stdio.h>

void lib_test2(void);

void lib_test1(void)
{
	printf("lib_test1\n");
	lib_test2();

	return;
}
