// matrix/matrix-common.h

// Copyright 2016  KITT.AI (author: Guoguo Chen)

#ifndef SNOWBOY_MATRIX_MATRIX_COMMON_H_
#define SNOWBOY_MATRIX_MATRIX_COMMON_H_

#include "matrix/snowboy-blas.h"

namespace snowboy {

enum MatrixResizeType {
  kSetZero,   // Sets values to 0 after resizing.
  kUndefined, // Sets values to undefined after resizing.
  kCopyData   // Sets values to old ones for shared area.
};

enum MatrixTransposeType {
  kTrans    = CblasTrans,   // With matrix transpose.
  kNoTrans  = CblasNoTrans  // Without matrix transpose.
};

// Forward declaration of vector and matrix classes.
class VectorBase;
class Vector;
class SubVector;
class MatrixBase;
class Matrix;
class SubMatrix;

class BitMatrix;
class BitVector;

}  // namespace snowboy

#endif  // SNOWBOY_MATRIX_MATRIX_COMMON_H_
