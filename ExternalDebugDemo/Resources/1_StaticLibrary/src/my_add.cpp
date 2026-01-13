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

void my_add_sub(double x, double y, double* y1, double* y2)
{
  *y1 = x + y;
  *y2 = x - y;
}

double my_add_sub2(double x, double y, double* y2)
{
  *y2 = x - y;
  return x + y;
}
