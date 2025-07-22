#include <stdio.h>
#include <stdint.h>

long long int 		Types();
int 				Displacement();
uint64_t			RetWords();

int main()
{
	printf("%lld\n", Types());
	printf("%d\n", Displacement());
	printf("%ld\n", RetWords());
}
