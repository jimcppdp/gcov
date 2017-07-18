#include <iostream>

int
main (void)
{
  int i;

  for (i = 1; i < 10; i++)
    {
      if (i % 3 == 0)
        //printf ("%d is divisible by 3\n", i);
	std::cout << i << " is divisible by 3\n";
      if (i % 11 == 0)
        //printf ("%d is divisible by 11\n", i);
	std::cout << i << " is divisible by 11\n";
    }

  return 0;
}
