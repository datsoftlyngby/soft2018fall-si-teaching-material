#include <stdio.h>

extern int euclid_();

int main (int argc, char *argv[])
{
   int a = 21, b = 7;

   printf ("The GCD of %d and %d is %d.\\n", a, b, euclid_());
}