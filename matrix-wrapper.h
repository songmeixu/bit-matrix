// matrix/matrix-wrapper.h

// Copyright 2016  KITT.AI (author: Guoguo Chen)

// Note:
// This code was modified extensively from src/kaldi-matrix.h in the Kaldi
// speech recognition toolkit. The original copyright is as follows:

// Copyright 2009-2011  Ondrej Glembek;  Microsoft Corporation;  Lukas Burget;
//                      Saarland University;  Petr Schwarz;  Yanmin Qian;
//                      Karel Vesely;  Go Vivace Inc.;  Haihua Xu

// See ../../COPYING for clarification regarding multiple authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
// THIS CODE IS PROVIDED *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY IMPLIED
// WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A PARTICULAR PURPOSE,
// MERCHANTABLITY OR NON-INFRINGEMENT.
// See the Apache 2 License for the specific language governing permissions and
// limitations under the License.

#ifndef SNOWBOY_MATRIX_MATRIX_WRAPPER_H_
#define SNOWBOY_MATRIX_MATRIX_WRAPPER_H_

#include <vector>

#include "matrix/matrix-common.h"
#include "matrix/vector-wrapper.h"
#include "utils/snowboy-debug.h"
#include "utils/snowboy-types.h"
#include "utils/snowboy-utils.h"

namespace snowboy {

////////////////////////////////////////////////////////////////////////////////
//
// MatrixBase class
//
////////////////////////////////////////////////////////////////////////////////

class MatrixBase {
 public:
  // Returns true if the matrix is all zeros, except for ones on diagonal.
  bool IsUnit(const float cutoff = 1.0e-06) const;

  // Returns true if matrix is all zeros.
  bool IsZero(const float cutoff = 1.0e-06) const;

  // Returns true if matrix is symmetric.
  bool IsSymmetric(const float cutoff = 1.0e-06) const;

  // Returns true if matrix is diagonal.
  bool IsDiagonal(const float cutoff = 1.0e-06) const;

  // Sets all members of a matrix to a specified value.
  void Set(const float value);

  // Sets all members of a matrix to zero, except ones along diagonal.
  void SetUnit();

  // Sets to random values of a normal distribution.
  void SetRandomGaussian();

  // Sets to numbers uniformly distributed on (0, 1).
  void SetRandomUniform();

  // Returns number of rows.
  inline MatrixIndexT NumRows() const { return num_rows_; }

  // Returns number of columns.
  inline MatrixIndexT NumCols() const { return num_cols_; }

  // Returns the stride, which is the distance in memory between each row.
  inline MatrixIndexT Stride() const { return stride_; }

  // Returns pointer to the data.
  inline float* Data() { return data_; }
  inline const float* Data() const { return data_; }

  // Returns pointer to data for one row.
  inline float* RowData(const MatrixIndexT row) {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return data_ + row * stride_;
  }
  inline const float* RowData(const MatrixIndexT row) const {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return data_ + row * stride_;
  }

  // Returns the value at given index.
  inline const float operator()(const MatrixIndexT row,
                                const MatrixIndexT col) const {
    SNOWBOY_ASSERT(row < num_rows_ && col < num_cols_ && row >= 0 && col >= 0);
    return *(data_ + row * stride_ + col);
  }
  inline float& operator()(const MatrixIndexT row,
                           const MatrixIndexT col) {
    SNOWBOY_ASSERT(row < num_rows_ && col < num_cols_ && row >= 0 && col >= 0);
    return *(data_ + row * stride_ + col);
  }

  // Returns specific row of matrix.
  inline SubVector Row(const MatrixIndexT row) {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return SubVector((*this), row);
  }
  inline const SubVector Row(const MatrixIndexT row) const {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return SubVector((*this), row);
  }

  // Returns a sub-part of matrix.
  SubMatrix Range(const MatrixIndexT row_offset,
                  const MatrixIndexT num_rows,
                  const MatrixIndexT col_offset,
                  const MatrixIndexT num_cols) const;
  SubMatrix RowRange(const MatrixIndexT row_offset,
                     const MatrixIndexT num_rows) const;
  SubMatrix ColRange(const MatrixIndexT col_offset,
                     const MatrixIndexT num_cols) const;

  // Copies data from another matrix.
  void CopyFromMat(const MatrixBase& mat,
                   const MatrixTransposeType trans_type = kNoTrans);

  // Copies data from vector to matrix:
  // 1. if vec.Dim() equals NumRows() * NumCols(), then we create the matrix by
  //    break the vector down into rows.
  // 2. if vec.Dim() equals NumCols(), then we create the matrix by copying one
  //    vector to each row.
  void CopyRowsFromVec(const VectorBase& vec);

  // Copies vector into specific row of matrix.
  void CopyRowFromVec(const VectorBase& vec, const MatrixIndexT row);

  // Copies data from vector to matrix:
  // 1. if vec.Dim() equals NumRows() * NumCols(), then we create the matrix by
  //    break the vector down into columns.
  // 2. if vec.Dim() equals NumCols(), then we create the matrix by copying one
  //    vector to each column.
  void CopyColsFromVec(const VectorBase& vec);

  // Copies vector into specific column of matrix.
  void CopyColFromVec(const VectorBase& vec, const MatrixIndexT col);

  // Copies vector into diagonal of matrix.
  void CopyDiagFromVec(const VectorBase& vec);

  // Column re-ordering:
  // Copies column r from column indices[r] of matrix mat. If indices[r] == -1,
  // then sets column r to zero.
  void CopyCols(const MatrixBase& mat,
                const std::vector<MatrixIndexT>& indices);

  // Row re-ordering:
  // Copies row r from r indices[r] of matrix mat. If indices[r] == -1, then
  // sets row r to zero.
  void CopyRows(const MatrixBase& mat,
                const std::vector<MatrixIndexT>& indices);

  // Transposes the matrix, only support square matrix here.
  void Transpose();

  // *this = alpha * *this
  void Scale(const float alpha);

  // *this += alpha * M.
  void AddMat(const float alpha, const MatrixBase& M,
              const MatrixTransposeType trans_type = kNoTrans);

  // Without transpose:
  // *this = beta * *this + alpha * mat1 * mat2^T.
  void AddMatMat(const float alpha,
                 const MatrixBase& mat1, const MatrixTransposeType trans_mat1,
                 const MatrixBase& mat2, const MatrixTransposeType trans_mat2,
                 const float beta);

  // *this = mat1 * mat2^T
  void MatMatRaw(const MatrixBase& mat1, const MatrixBase& mat2);

  // *this += alpha * vec1 * vec2^T.
  void AddVecVec(const float alpha,
                 const VectorBase& vec1, const VectorBase& vec2);

  // this->Row(i) += alpha * vec.
  void AddVecToRows(const float alpha, const VectorBase& vec);

  // Applies floor to all elements.
  void ApplyFloor(const float floor);

  void ApplyCeiling(const float ceil);

  void ApplyRange(const float floor, const float ceil);

  // Scales each column by a scalar taken from that dimension of the vector.
  void MulColsVec(const VectorBase& scale);

  // Scales each row by a scalar taken from that dimension of the vector.
  void MulRowsVec(const VectorBase& scale);

  // If <add> is true, then read the Vector from stream, and add it to the
  // current Vector.
  void Read(const bool binary, const bool add, std::istream* is);
  void Read(const bool binary, std::istream* is);

  void Write(const bool binary, std::ostream* os) const;

 protected:

  // Constructor, this version creates an empty matrix, and is only callable
  // from child classes.
  explicit MatrixBase(): num_rows_(0), num_cols_(0), stride_(0), data_(NULL) {}

  // Constructor, this version creates a matrix with given data, and is only
  // callable from child classes.
  explicit MatrixBase(const MatrixIndexT rows,
                      const MatrixIndexT cols,
                      const MatrixIndexT stride,
                      float* data) :
      num_rows_(rows), num_cols_(cols), stride_(stride), data_(data) {}

  // Destructor, only callable from child classes.
  ~MatrixBase() { }

  MatrixIndexT num_rows_;
  MatrixIndexT num_cols_;
  MatrixIndexT stride_;
  float* data_;

  SNOWBOY_DISALLOW_COPY_AND_ASSIGN(MatrixBase);
};

////////////////////////////////////////////////////////////////////////////////
//
// Matrix class
//
////////////////////////////////////////////////////////////////////////////////

class Matrix : public MatrixBase {
 public:
  // Constructor, this version creates an empty matrix.
  Matrix() : MatrixBase() {}

  // Constructor, this version creates a matrix with specified size.
  explicit Matrix(const MatrixIndexT rows,
                  const MatrixIndexT cols,
                  const MatrixResizeType resize_type = kSetZero) :
      MatrixBase() {
    Resize(rows, cols, resize_type);
  }

  // Copy constructor, this version is need to avoid the default copy
  // constructor.
  explicit Matrix(const Matrix& mat) : MatrixBase() {
    Resize(mat.NumRows(), mat.NumCols(), kUndefined);
    CopyFromMat(mat);
  }

  // Copy constructor, this version can copy with transpose.
  explicit Matrix(const MatrixBase& mat,
                  const MatrixTransposeType trans_type = kNoTrans) :
      MatrixBase() {
    if (trans_type == kNoTrans) {
      Resize(mat.NumRows(), mat.NumCols(), kUndefined);
      CopyFromMat(mat, trans_type);
    } else {
      Resize(mat.NumCols(), mat.NumRows(), kUndefined);
      CopyFromMat(mat, trans_type);
    }
  }

  // Resizes matrix to a specified size, works in linear time to the number of
  // data elements.
  void Resize(const MatrixIndexT rows,
              const MatrixIndexT cols,
              const MatrixResizeType resize_type = kSetZero);

  // Swaps the contents of *this and *other. Shallow swap.
  void Swap(Matrix* other);

  // Removes a specified row.
  void RemoveRow(const MatrixIndexT row);

  // append a row
  void Append(const MatrixBase& mat);

  // Transposes the matrix.
  void Transpose();

  // Assignment operator, one for class Matrix and another for MatrixBase.
  Matrix& operator=(const Matrix& other);
  Matrix& operator=(const MatrixBase& other);

  // Distructor.
  ~Matrix() { ReleaseMatrixMemory(); }

  // If <add> is true, then read the Vector from stream, and add it to the
  // current Vector.
  void Read(const bool binary, const bool add, std::istream* is);
  void Read(const bool binary, std::istream* is);

 private:
  // Allocates memory for <data_>.
  void AllocateMatrixMemory(const MatrixIndexT rows, const MatrixIndexT cols);

  void ReleaseMatrixMemory();
};

////////////////////////////////////////////////////////////////////////////////
//
// SubMatrix class
//
////////////////////////////////////////////////////////////////////////////////

class SubMatrix : public MatrixBase {
 public:
  // Constructor, this version creates a SubMatrix from Matrix or SubMatrix, and
  // it is not const-safe.
  SubMatrix(const MatrixBase& mat,
            const MatrixIndexT row_offset,
            const MatrixIndexT num_rows,
            const MatrixIndexT col_offset,
            const MatrixIndexT num_cols);

  // Copy constructor, needed for Range() to work in base class.
  SubMatrix(const SubMatrix& other) : MatrixBase(other.num_rows_,
                                                 other.num_cols_,
                                                 other.stride_,
                                                 other.data_) {}

  ~SubMatrix() {}

 private:
  SubMatrix() {}  // Blocks the default constructor.
  SNOWBOY_DISALLOW_ASSIGN(SubMatrix);
};

////////////////////////////////////////////////////////////////////////////////
//
// Functions
//
////////////////////////////////////////////////////////////////////////////////

bool IsEqual(const float tolerance,
             const MatrixBase& mat1, const MatrixBase& mat2);

}  // namespace snowboy

#endif  // SNOWBOY_MATRIX_MATRIX_WRAPPER_H_
