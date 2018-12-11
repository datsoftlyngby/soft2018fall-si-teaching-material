#include <stdio.h>

extern void adainit (void);
extern void adafinal (void);
extern int add (int, int);
extern int sub (int, int);

int main (int argc, char *argv[])
{
   int a = 21, b = 7;

   adainit();

   /* Should print "21 + 7 = 28" */
   printf ("%d + %d = %d\\n", a, b, add (a, b));

   /* Should print "21 - 7 = 14" */
   printf ("%d - %d = %d\\n", a, b, sub (a, b));

   adafinal();
}
