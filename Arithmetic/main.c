#include <unistd.h>
#include <stdio.h>

int AddFunction();
int SubFunction();
int IncFunction();

int main()
{
	printf("%d\n", AddFunction());
	printf("%d\n", SubFunction());
	printf("%d\n", IncFunction());
}
