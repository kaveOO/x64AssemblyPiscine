#include <unistd.h>
#include <stdio.h>

int AddFunction();
int SubFunction();
int IncFunction();
int DecFunction();
int MulFunction();
int IMulFunction();

int main()
{
	printf("%d\n", AddFunction());
	printf("%d\n", SubFunction());
	printf("%d\n", IncFunction());
	printf("%d\n", DecFunction());
	printf("%d\n", MulFunction());
	printf("%d\n", IMulFunction());
}
