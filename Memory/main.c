#include <stdio.h>
#include <stdint.h>

long long int 		Types();
int 				Displacement();
unsigned long long	RetWords();

int main()
{
	printf("%lld\n", Types());
	printf("%d\n", Displacement());
	printf("%llu\n", RetWords());
}
