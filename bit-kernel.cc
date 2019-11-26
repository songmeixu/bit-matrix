// Copyright 2017  Baidu (author: Meixu Song)

#include "matrix/bit-kernel.h"
#include <bitset>
#include <iostream>

using namespace std;

namespace snowboy {

const uint64 mask_8_1 = 0b0000000100000001000000010000000100000001000000010000000100000001;

int32 bit_kernel_for_uint64_8_1(uint64 x, uint64 y) {
  int32 rt = 0;
  uint64 y_ = ~y & mask_8_1;
//  bitset<64> x_b(x), y_b(y), y_n_b(y_);
//  cout << x_b << endl;
//  cout << y_b << endl;
//  cout << y_n_b << endl;
  for (int b = 0; b < 8; ++b) {
//    cout << bitset<64>(x & (y << b)) << endl;
//    cout << bitset<64>(x & (y_ << b)) << endl;
//    cout << __builtin_popcountll(x & (y << b)) << " " << __builtin_popcountll(x & (y_ << b)) << endl;

    rt += (__builtin_popcountll(x & (y << b)) - __builtin_popcountll(x & (y_ << b))) << b;
  }
  return rt;
}

}