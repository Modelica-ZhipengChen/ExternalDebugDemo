#pragma once

#ifdef __cplusplus
extern "C" {
#endif

  double my_add(double x, double y);

  void my_add_sub(double x, double y, double* y1, double* y2);

  double my_add_sub2(double x, double y, double* y2);

  #ifdef __cplusplus
}
#endif
