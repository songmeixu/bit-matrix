// Copyright 2017  Baidu (author: Meixu Song)


#include <algorithm>
#include <cmath>
#include <cstring>

#include "matrix/bit-matrix.h"
#include "matrix/bit-vector.h"
#include "matrix/bit-kernel.h"
#include "matrix/matrix-wrapper.h"
#include "matrix/vector-wrapper.h"
#include "utils/snowboy-io.h"
#include "utils/snowboy-math.h"

namespace snowboy {

int32 VecVec(const BitVector &x, const BitVector &y) {
  SNOWBOY_ASSERT(x.Dim() == y.Dim());
  int32 result = 0;
  if (y.QuantBits() == 1) {
    for (int k = 0; k < x.Dim(); ++k) {
      result += bit_kernel_for_uint64_8_1(x(k), y(k));
    }
  }
  return result;
}

BitVector::BitVector(const BitMatrix& mat, MatrixIndexT row) {
  data_ = const_cast<uint64*>(mat.RowData(row));
  dim_ = mat.NumCols();
  quant_bits_ = mat.QuantBits();
  align_bits_ = mat.AlignBits();
  scale_ = mat.Scale();
}

void BitVector::CopyFromBitVec(const BitVector& vec) {
  SNOWBOY_ASSERT(Dim() == vec.Dim());
  if (data_ != vec.Data()) {
    std::memcpy(data_, vec.Data(), sizeof(uint64) * dim_);
  }
}

//void BitVector::CopyFromVec(const VectorBase& vec) {
//  SNOWBOY_ASSERT(Dim() * quant_bits_ == vec.Dim());
//  if (data_ != vec.Data()) {
//    std::memcpy(data_, vec.data_, sizeof(float) * dim_);
//  }
//}

}

