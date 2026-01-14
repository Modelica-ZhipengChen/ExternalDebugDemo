#include "load_library.h"
#include <stdio.h>

typedef double(*MY_FUNCTION)(double x, double y);

int main()
{
  /* 测试静态库调试功能 */
  {
    double x = 1;
    double y = 2;
    double z = my_add(x, y);
    printf("my_add(%f, %f) = %f\n", x, y, z);
  }

  /* 测试动态库加载的调试功能 */
  DllHandler handler = DllLoad("../Library/win64/libmyDiv.dll");
  if (!handler)
  {
    printf("DllLoad failed\n");
    return -1;
  }
  MY_FUNCTION my_div = DllFindSymbol(handler, "my_div");
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
