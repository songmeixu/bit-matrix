// Copyright 2017  Baidu (author: Meixu Song)


#ifndef SNOWBOY_BIT_VECTOR_H
#define SNOWBOY_BIT_VECTOR_H

#include "matrix/matrix-common.h"
#include "utils/snowboy-debug.h"
#include "utils/snowboy-types.h"
#include "utils/snowboy-utils.h"

namespace snowboy {

int32 VecVec(const BitVector &x, const BitVector &y);

class BitVector {
 public:
  // Constructor, this version creates a SubVector from a row of MatrixBase, and
  // it is not const-safe.
  explicit BitVector(const BitMatrix& mat, MatrixIndexT row);

  // Constructor, this version creates an empty vector. We put the constructor
  // as protected so that it is only callable from child classes.
  BitVector() : dim_(0), data_(NULL) {}

  // Destructor, memory allocation happens in child classes. We put the
  // destructor as protected so that it is only callable from child classes.
  ~BitVector() {}

  // Returns a pointer to the start of the vector's data.
  inline uint64* Data() { return data_; }
  inline const uint64* Data() const { return data_; }

  // Copies data from another bit-vector vec.
  void CopyFromBitVec(const BitVector& vec);

  // Returns the  dimension of the vector.
  inline MatrixIndexT Dim() const { return dim_; }

  // Returns the value at given index.
  inline const uint64 operator()(const MatrixIndexT index) const {
    SNOWBOY_ASSERT(index < dim_ && index >= 0);
    return data_[index];
  }
  inline uint64 &operator()(const MatrixIndexT index) {
    SNOWBOY_ASSERT(index < dim_ && index >= 0);
    return data_[index];
  }

  int32 QuantBits() const { return quant_bits_; }

  int32 AlignBits() const { return align_bits_; }

  float Scale() const { return scale_; }

 protected:
  // Copies data from another vector vec.
//  void CopyFromVec(const VectorBase& vec);

  // Vector dimension.
  MatrixIndexT dim_;

  // Data pointer.
  uint64 *data_;

  int32 quant_bits_;
  int32 align_bits_;
  int32 scale_;

  SNOWBOY_DISALLOW_ASSIGN(BitVector);
};

}

#endif //SNOWBOY_BIT_VECTOR_H
