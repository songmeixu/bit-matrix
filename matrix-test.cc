// Copyright 2017  Baidu (author: Meixu Song)

#include <iostream>
#include <ctime>

#include "matrix/matrix-common.h"
#include "matrix/bit-matrix.h"
#include "matrix/matrix-wrapper.h"

using namespace std;
using namespace snowboy;

int main () {
  int cnt = 1;

  Matrix x(512, 512);
  Matrix y(512, 512);
  x.Set(1);
  y.Set(1);
  Matrix z(x.NumRows(), y.NumRows());
  cout << "matrix mul. matrix: (512 * 512 * 512) " << endl;

  clock_t begin, end;

  begin = clock();
  BitMatrix x_8(x, 8);
  BitMatrix y_1(y, 1, 8);
  Matrix z_8_1(x_8.NumRows(), y_1.NumRows());
  for (int i = 0; i < cnt; ++i) {
    BitMatBitMat(x_8, y_1, &z_8_1);
  }
  end = clock();
  double elapsed_secs_bit = double(end - begin) / CLOCKS_PER_SEC;

  begin = clock();
  for (int i = 0; i < cnt; ++i) {
    z.MatMatRaw(x, y);
  }
  end = clock();
  double elapsed_secs_raw = double(end - begin) / CLOCKS_PER_SEC;

  begin = clock();
  for (int i = 0; i < cnt; ++i) {
    z.AddMatMat(1.0, x, kNoTrans, y, kTrans, 0.0);
  }
  end = clock();
  double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;

  cout << "raw: " << elapsed_secs_raw << endl;
  cout << "bit: (8-1) " << elapsed_secs_bit << endl;
  cout << "cblas " << elapsed_secs << endl;

  return 0;
}


