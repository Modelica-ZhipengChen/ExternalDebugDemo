#pragma once

#if _MSC_VER
# define MW_EXPORT _declspec(dllexport)
# define MW_IMPORT _declspec(dllimport)
# define MW_LOCAL
#else
/* gcc3.3 and later support the visibility attribute. */
# if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >=3)
#   define MW_DEFAULT __attribute__((visibility("default")))
#   define MW_LOCAL __attribute__((visibility("hidden")))
# else
#   define MW_DEFAULT
#   define MW_LOCAL
# endif
# define MW_EXPORT MW_DEFAULT
# define MW_IMPORT MW_DEFAULT
#endif

#ifdef MW_EXPORT_API
# define MW_API MW_EXPORT
#else
# define MW_API MW_IMPORT
#endif

#ifdef __cplusplus
extern "C" {
#endif

  MW_API double func_f(double x, double y);


  #ifdef __cplusplus
}
#endif
