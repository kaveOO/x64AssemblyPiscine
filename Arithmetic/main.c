#include <unistd.h>
#include <stdio.h>

int AddFunction();
int SubFunction();
int IncFunction();
int DecFunction();
int MulFunction();
int IMulFunction();
int NegFunction();

int main()
{
	printf("Sums two numbers -> %d\n", AddFunction());
	printf("Substract two numbers -> %d\n", SubFunction());
	printf("Increment value in program %d\n", IncFunction());
	printf("Decrement value in program -> %d\n", DecFunction());
	printf("Multiplying unsigned integer -> %d\n", MulFunction());
	printf("Multiplying signed integer -> %d\n", IMulFunction());
	printf("Finding negative of a number -> %d\n", NegFunction());
}
