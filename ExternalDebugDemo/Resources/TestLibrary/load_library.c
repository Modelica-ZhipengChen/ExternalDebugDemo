#include "load_library.h"

#if defined(_WIN32)
#include <stdarg.h>
#elif defined(__linux__)
#include <string.h>
#endif

DllHandler DllLoad(const char* fullname)
{
#if defined(_WIN32)
  DllHandler dllHandler = LoadLibrary(fullname);
#elif defined(__linux__)
  DllHandler dllHandler = dlopen(fullname. RTLD_LAZY);
#endif

  return dllHandler;
}

int DllUnload(DllHandler dllHandler)
{
#if defined(_WIN32)
  return FreeLibrary(dllHandler);
#elif defined(__linux__)
  return dlclose(dllHandler);
#endif
}

void* DllFindSymbol(DllHandler dllHandler, const char* name)
{
#if defined(_WIN32)
  return GetProcAddress(dllHandler, name);
#elif defined(__linux__)
  return dlsym(dllHandler, name);
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
