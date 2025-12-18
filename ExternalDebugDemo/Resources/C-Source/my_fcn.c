#include "my_fcn.h"

double my_fcn(double x, double y)
{
  int yd = (int)(y + 0.5);

  int yd2 = 100 / yd;
  double ans = yd2 * (x / 100);

  return ans;
}
