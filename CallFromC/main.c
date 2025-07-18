#include <unistd.h>

void HelloWorld();	// Forward assembly function

int main()			// Had to remove the sys_exit in assembly to avoid exiting after first HelloWorld()
{
	HelloWorld();
	HelloWorld();
}
