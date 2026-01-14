#if defined(_WIN32)
#include <Windows.h>
#define DllHandler HMODULE
#elif defined(__linux__)
#include <dlfcn.h>
#define DllHandler void*
#else
#error "Support Windows and Linux only"
#endif

/* 加载动态库 */
DllHandler DllLoad(const char* fullname);

/* 卸载动态库 */
int DllUnload(DllHandler dllHandler);

/* 查找符号 */
void* DllFindSymbol(DllHandler dllHandler, const char* name);

/* 获取错误信息 */
void mwsDllError(int len, char* info);
