#include "load_library.h"

#if defined(_WIN32)
#include <stdarg.h>
#elif defined(__linux__)
#include <string.h>
#endif

DllHander DllLoad(const char* fullname)
{
#if defined(_WIN32)
  DllHander dllHander = LoadLibrary(fullname);
#elif defined(__linux__)
  DllHander dllHander = dlopen(fullname. RTLD_LAZY);
#endif

  return dllHander;
}

int DllUnload(DllHander dllHandler)
{
#if defined(_WIN32)
  return FreeLibrary(dllHandler);
#elif defined(__linux__)
  return dlclose(dllHander);
#endif
}

void* DllFindSymbol(DllHander dllHander, const char* name)
{
#if defined(_WIN32)
  return GetProcAddress(dllHander, name);
#elif defined(__linux__)
  return dlsym(dllHander, name);
#endif
}

void mwsDllError(int len, char* info)
{
#if defined(_WIN32)
  DWORD errorMID = GetLastError();
  DWORD* pArgs[] = {(DWORD*)"The dll"};
  FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_ARGUMENT_ARRAY,
    NULL, errorMID, MAKELANGID(LANG_ENGLISH, SUBLANG_DEFAULT), info, (DWORD)len, (va_list*)pArgs);
#elif defined(__linux__)
  char* errs = dlerror();
  memcpy(info, errs, len);
  info[len - 1] = '\0';
#endif
}
