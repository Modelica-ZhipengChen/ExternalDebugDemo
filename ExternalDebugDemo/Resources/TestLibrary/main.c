#include "load_library.h"
#include <stdio.h>

typedef double(*MY_FUNCTION)(double x, double y);

int main()
{

  DllHander hander = DllLoad("../Library/win64/libmyDiv.dll");
  if (!hander)
  {
    printf("DllLoad failed\n");
    return -1;
  }
  MY_FUNCTION my_div = DllFindSymbol(hander, "my_div");
  if (!my_div)
  {
    printf("Can not find function my_div in libmyDiv.dll\n");
    return -2;
  }
  double x = 1;
  double y = 2;
  double z = my_div(x, y);
  printf("my_div(%f, %f) = %f\n", x, y, z);
  return 0;
}
