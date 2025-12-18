#include "my_div.h"
#include "my_integer.h"

double my_div(double x, double y)
{
  int yd = my_integer(y);
  return x / y;
}
