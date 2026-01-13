#if defined(_WIN32)
#include <Windows.h>
#define DllHander HMODULE
#elif defined(__linux__)
#include <dlfcn.h>
#define DllHander void*
#else
#error "Support Windows and Linux only"
#endif

/* 加载动态库 */
DllHander DllLoad(const char* fullname);

/* 卸载动态库 */
int DllUnload(DllHander dllHandler);

/* 查找符号 */
void* DllFindSymbol(DllHander dllHander, const char* name);

/* 获取错误信息 */
void mwsDllError(int len, char* info);
