#include <stdio.h>
#include <stdint.h>

long long int 		Types();
int 				Displacement();
uint64_t			RetWords();
void				PrintArray(char *array);

int main()
{
	char test[] = "This is an array getting printed in assembly\n";

	PrintArray(test);
	printf("%lld\n", Types());
	printf("%d\n", Displacement());
	printf("%ld\n", RetWords());

}
