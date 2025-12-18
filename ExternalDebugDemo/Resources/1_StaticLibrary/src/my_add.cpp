#include "my_add.h"

double my_add(double x, double y)
{
  double z = x + y;
  if (z < y)
  {
    z = y;
  }
  if (z < x)
  {
    z = x;
  }

  return z;
}
