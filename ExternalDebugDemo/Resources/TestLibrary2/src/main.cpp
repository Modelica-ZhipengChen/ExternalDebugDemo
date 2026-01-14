#include "load_library.h"
#include <stdio.h>
#include <iostream>
#include <thread>
#include <chrono>

typedef double(*MY_FUNCTION)(double x, double y);

int fcn()
{
  // 测试动态库加载的调试功能
  DllHandler handler = DllLoad("../Library/win64/libmyDiv.dll");
  if (!handler)
  {
    printf("DllLoad failed\n");
    return -1;
  }
  MY_FUNCTION my_div = reinterpret_cast<MY_FUNCTION>(DllFindSymbol(handler, "my_div"));
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

int main()
{
#if defined(MUL_THREAD)
  // 多线程测试
  std::thread worker(fcn);
  // 主线程执行自己的任务
  std::cout << "start main thread" << std::endl;
  std::this_thread::sleep_for(std::chrono::milliseconds(500)); // 模拟耗时操作
  std::cout << "waiting for sub thread" << std::endl;
  // 等待新线程完成
  worker.join();
  std::cout << "sub thread finish, exit main thread" << std::endl;
#else
  // 串行功能测试
  fcn();
#endif

  return 0;
}
