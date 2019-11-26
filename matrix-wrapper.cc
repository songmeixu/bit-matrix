// matrix/matrix-wrapper.cc

// Copyright 2016  KITT.AI (author: Guoguo Chen)

// Note:
// This code was modified extensively from src/kaldi-matrix.cc in the Kaldi
// speech recognition toolkit. The original copyright is as follows:

// Copyright 2009-2011   Lukas Burget;  Ondrej Glembek;  Go Vivace Inc.;
//                       Microsoft Corporation;  Saarland University;
//                       Yanmin Qian;  Petr Schwarz;  Jan Silovsky;
//                       Haihua Xu

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

#include <cmath>
#include <cstring>

#include "matrix/matrix-wrapper.h"
#include "matrix/vector-wrapper.h"
#include "utils/snowboy-io.h"
#include "utils/snowboy-math.h"

namespace snowboy {

////////////////////////////////////////////////////////////////////////////////
//
// MatrixBase class
//
////////////////////////////////////////////////////////////////////////////////

bool MatrixBase::IsUnit(const float cutoff) const {
  float abs_max = 0.0;
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      float abs_diff = std::fabs((*this)(r, c) - (r == c ? 1.0 : 0.0));
      abs_max = std::max(abs_max, abs_diff);
    }
  }
  return (abs_max <= cutoff);
}

bool MatrixBase::IsZero(const float cutoff) const {
  float abs_max = 0.0;
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      abs_max = std::max(abs_max, std::fabs((*this)(r, c)));
    }
  }
  return (abs_max <= cutoff);
}

bool MatrixBase::IsSymmetric(const float cutoff) const {
  if (num_rows_ != num_cols_) { return false; }
  float abs_max = 0.0;
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = r + 1; c < num_cols_; ++c) {
      abs_max = std::max(abs_max, std::fabs((*this)(r, c) - (*this)(c, r)));
    }
  }
  return (abs_max <= cutoff);
}

bool MatrixBase::IsDiagonal(const float cutoff) const {
  float abs_max = 0.0;
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c != r && c < num_cols_; ++c) {
      abs_max = std::max(abs_max, std::fabs((*this)(r, c)));
    }
  }
  return (abs_max <= cutoff);
}

void MatrixBase::Set(const float value) {
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      (*this)(r, c) = value;
    }
  }
}

void MatrixBase::SetUnit() {
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      if (r == c) {
        (*this)(r, c) = 1.0;
      } else {
        (*this)(r, c) = 0.0;
      }
    }
  }
}

void MatrixBase::SetRandomGaussian() {
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      (*this)(r, c) = RandomGaussian();
    }
  }
}

void MatrixBase::SetRandomUniform() {
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      (*this)(r, c) = RandomUniform();
    }
  }
}

SubMatrix MatrixBase::Range(const MatrixIndexT row_offset,
                            const MatrixIndexT num_rows,
                            const MatrixIndexT col_offset,
                            const MatrixIndexT num_cols) const {
  return SubMatrix(*this, row_offset, num_rows, col_offset, num_cols);
}

SubMatrix MatrixBase::RowRange(const MatrixIndexT row_offset,
                               const MatrixIndexT num_rows) const {
  return SubMatrix(*this, row_offset, num_rows, 0, num_cols_);
}

SubMatrix MatrixBase::ColRange(const MatrixIndexT col_offset,
                               const MatrixIndexT num_cols) const {
  return SubMatrix(*this, 0, num_rows_, col_offset, num_cols);
}

void MatrixBase::CopyFromMat(const MatrixBase& mat,
                             const MatrixTransposeType trans_type) {
  if ((void*)(&mat) == (void*)this) {
    return;
  }
  if (trans_type == kNoTrans) {
    SNOWBOY_ASSERT(num_rows_ == mat.NumRows() && num_cols_ == mat.NumCols());
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      Row(r).CopyFromVec(mat.Row(r));
    }
  } else {
    SNOWBOY_ASSERT(num_cols_ == mat.NumRows() && num_rows_ == mat.NumCols());
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      for (MatrixIndexT c = 0; c < num_cols_; ++c) {
        data_[r * stride_ + c] = mat(c, r);
      }
    }
  }
}

void MatrixBase::CopyRowsFromVec(const VectorBase& vec) {
  if (vec.Dim() == num_rows_ * num_cols_) {
    if (stride_ == num_cols_) {
      std::memcpy(data_, vec.Data(), sizeof(float) * vec.Dim());
    } else {
      for (MatrixIndexT r = 0; r < num_rows_; ++r) {
        std::memcpy(RowData(r),
                    vec.Data() + r * num_cols_, sizeof(float) * num_cols_);
      }
    }
  } else if (vec.Dim() == num_cols_) {
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      std::memcpy(RowData(r), vec.Data(), sizeof(float) * num_cols_);
    }
  } else {
    SNOWBOY_ERROR << "Vector size should be NumRows() * NumCols() or "
        << "NumCols(). Vector size is " << vec.Dim() << ", Matrix size is "
        << num_rows_ << "x" << num_cols_;
  }
}

void MatrixBase::CopyRowFromVec(const VectorBase& vec, const MatrixIndexT row) {
  SNOWBOY_ASSERT(vec.Dim() == num_cols_ && row < num_rows_ && row >= 0);
  std::memcpy(RowData(row), vec.Data(), sizeof(float) * num_cols_);
}

void MatrixBase::CopyColsFromVec(const VectorBase& vec) {
  if (vec.Dim() == num_rows_ * num_cols_) {
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      for (MatrixIndexT c = 0; c < num_cols_; ++c) {
        data_[r * stride_ + c] = vec(c * num_rows_ + r);
      }
    }
  } else if (vec.Dim() == num_rows_) {
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      for (MatrixIndexT c = 0; c < num_cols_; ++c) {
        data_[r * stride_ + c] = vec(r);
      }
    }
  } else {
    SNOWBOY_ERROR << "Vector size should be NumRows() * NumCols() or NumCols()";
  }
}

void MatrixBase::CopyColFromVec(const VectorBase& vec, const MatrixIndexT col) {
  SNOWBOY_ASSERT(vec.Dim() == num_rows_ && col < num_cols_ && col >= 0);
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    data_[r * stride_ + col] = vec(r);
  }
}

void MatrixBase::CopyDiagFromVec(const VectorBase& vec) {
  SNOWBOY_ASSERT(vec.Dim() == std::min(num_cols_, num_rows_));
  for (MatrixIndexT d = 0; d < vec.Dim(); ++d) {
    data_[d * stride_ + d] = vec(d);
  }
}

void MatrixBase::CopyCols(const MatrixBase& mat,
                          const std::vector<MatrixIndexT>& indices) {
  SNOWBOY_ASSERT(num_rows_ == mat.NumRows());
  SNOWBOY_ASSERT(num_cols_ == static_cast<MatrixIndexT>(indices.size()));

  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      SNOWBOY_ASSERT(indices[c] >= -1 && indices[c] < mat.NumCols());
      data_[r * stride_ + c] = (indices[c] == -1) ? 0.0 : mat(r, indices[c]);
    }
  }
}

void MatrixBase::CopyRows(const MatrixBase& mat,
                          const std::vector<MatrixIndexT>& indices) {
  SNOWBOY_ASSERT(num_cols_ == mat.NumCols());
  SNOWBOY_ASSERT(num_rows_ == static_cast<MatrixIndexT>(indices.size()));

  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    SNOWBOY_ASSERT(indices[r] >= -1 && indices[r] < mat.NumRows());
    if (indices[r] == -1) {
      memset(data_ + r * stride_, 0, sizeof(float) * num_cols_);
    } else {
      memcpy(data_ + r * stride_,
             mat.RowData(indices[r]), sizeof(float) * num_cols_);
    }
  }
}

void MatrixBase::Transpose() {
  SNOWBOY_ASSERT(num_rows_ == num_cols_);
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < r; ++c) {
      float& a = (*this)(r, c);
      float& b = (*this)(c, r);
      std::swap(a, b);
    }
  }
}

void MatrixBase::Scale(const float alpha) {
  if (alpha == 1.0 || num_rows_ == 0 || num_cols_ == 0) {
    return;
  }
  if (num_cols_ == stride_) {
    cblas_sscal(static_cast<size_t>(num_rows_) * static_cast<size_t>(num_cols_),
                alpha, data_, 1);
  } else {
    float* this_data = data_;
    for (MatrixIndexT i = 0; i < num_rows_; ++i, this_data += stride_) {
      cblas_sscal(static_cast<size_t>(num_cols_), alpha, this_data, 1);
    }
  }
}

void MatrixBase::AddMat(const float alpha, const MatrixBase& M,
                        const MatrixTransposeType trans_type) {
  if (trans_type == kNoTrans) {
    SNOWBOY_ASSERT(num_rows_ == M.NumRows() && num_cols_ == M.NumCols());
  } else {
    SNOWBOY_ASSERT(num_rows_ == M.NumCols() && num_cols_ == M.NumRows());
  }

  if (num_rows_ == 0 || num_cols_ == 0) {
    return;
  }

  if (&M == this) {
    if (trans_type == kNoTrans) {
      Scale(alpha + 1.0);
    } else {
      if (alpha == 1.0) {
        for (MatrixIndexT row = 0; row < num_rows_; ++row) {
          for (MatrixIndexT col = 0; col < row; ++col) {
            float* lower = data_ + (row * stride_) + col;
            float* upper = data_ + (col * stride_) + row;
            float sum = *lower + *upper;
            *lower = *upper = sum;
          }
          *(data_ + (row * stride_) + row) *= 2.0;
        }
      } else {
        for (MatrixIndexT row = 0; row < num_rows_; ++row) {
          for (MatrixIndexT col = 0; col < row; ++col) {
            float* lower = data_ + (row * stride_) + col;
            float* upper = data_ + (col * stride_) + row;
            float lower_tmp = *lower;
            *lower += alpha * *upper;
            *upper += alpha * lower_tmp;
          }
          *(data_ + (row * stride_) + row) *= (1.0 + alpha);
        }
      }
    }
  } else {
    float* m_data = M.data_;
    float* this_data = data_;
    if (trans_type == kNoTrans) {
      for (MatrixIndexT row = 0; row < num_rows_;
           ++row, m_data += M.stride_, this_data += stride_) {
        cblas_saxpy(num_cols_, alpha, m_data, 1, this_data, 1);
      }
    } else {
      for (MatrixIndexT row = 0; row < num_rows_;
           ++row, ++m_data, this_data += stride_)
        cblas_saxpy(num_cols_, alpha, m_data, M.stride_, this_data, 1);
    }
  }
}

void MatrixBase::AddMatMat(const float alpha,
                           const MatrixBase& mat1,
                           const MatrixTransposeType trans_mat1,
                           const MatrixBase& mat2,
                           const MatrixTransposeType trans_mat2,
                           const float beta) {
  SNOWBOY_ASSERT((trans_mat1 == kNoTrans && trans_mat2 == kNoTrans
                  && mat1.NumCols() == mat2.NumRows()
                  && mat1.NumRows() == num_rows_
                  && mat2.NumCols() == num_cols_)
                 || (trans_mat1 == kTrans && trans_mat2 == kNoTrans
                     && mat1.NumRows() == mat2.NumRows()
                     && mat1.NumCols() == num_rows_
                     && mat2.NumCols() == num_cols_)
                 || (trans_mat1 == kNoTrans && trans_mat2 == kTrans
                     && mat1.NumCols() == mat2.NumCols()
                     && mat1.NumRows() == num_rows_
                     && mat2.NumRows() == num_cols_)
                 || (trans_mat1 == kTrans && trans_mat2 == kTrans
                     && mat1.NumRows() == mat2.NumCols()
                     && mat1.NumCols() == num_rows_
                     && mat2.NumRows() == num_cols_));
  SNOWBOY_ASSERT(&mat1 != this && &mat2 != this);
  cblas_sgemm(CblasRowMajor,
              static_cast<CBLAS_TRANSPOSE>(trans_mat1),
              static_cast<CBLAS_TRANSPOSE>(trans_mat2),
              num_rows_, num_cols_,
              trans_mat1 == kNoTrans ? mat1.NumCols() : mat1.NumRows(),
              alpha, mat1.Data(), mat1.Stride(),
              mat2.Data(), mat2.Stride(), beta, data_, stride_);
}

void MatrixBase::MatMatRaw(const MatrixBase& mat1,
                           const MatrixBase& mat2) {
  SNOWBOY_ASSERT(mat1.NumCols() == mat2.NumCols() &&
      mat1.NumRows() == num_rows_ &&
      mat2.NumRows() == num_cols_);
  SNOWBOY_ASSERT(&mat1 != this && &mat2 != this);
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      float rt = 0;
      for (MatrixIndexT k = 0; k < mat1.NumCols(); ++k) {
        rt += mat1(r,k) * mat2(c,k);
      }
      data_[r * stride_ + c] = rt;
    }
  }
}

void MatrixBase::AddVecVec(const float alpha,
                           const VectorBase& vec1, const VectorBase& vec2) {
  SNOWBOY_ASSERT(num_rows_ == vec1.Dim() && num_cols_ == vec2.Dim());
  cblas_sger(CblasRowMajor, vec1.Dim(), vec2.Dim(),
             alpha, vec1.Data(), 1, vec2.Data(), 1, data_, stride_);
}

void MatrixBase::AddVecToRows(const float alpha, const VectorBase& vec) {
  SNOWBOY_ASSERT(num_cols_ == vec.Dim());
  if (num_cols_ <= 64) {
    float* data = data_;
    const float* vec_data = vec.Data();
    for (MatrixIndexT r = 0; r < num_rows_; ++r, data += stride_) {
      for (MatrixIndexT c = 0; c < num_cols_; ++c) {
        data[c] += alpha * vec_data[c];
      }
    }
  } else {
    Vector ones(num_rows_);
    ones.Set(1.0);
    AddVecVec(alpha, ones, vec);
  }
}

void MatrixBase::ApplyFloor(const float floor) {
  for (MatrixIndexT i = 0; i < num_rows_; ++i) {
    float* data = RowData(i);
    for (MatrixIndexT j = 0; j < num_cols_; ++j) {
      data[j] = (data[j] < floor ? floor : data[j]);
    }
  }
}

void MatrixBase::ApplyCeiling(const float ceil) {
  for (MatrixIndexT i = 0; i < num_rows_; ++i) {
    float* data = RowData(i);
    for (MatrixIndexT j = 0; j < num_cols_; ++j) {
      data[j] = (data[j] > ceil ? ceil : data[j]);
    }
  }
}

void MatrixBase::ApplyRange(const float floor, const float ceil) {
  for (MatrixIndexT i = 0; i < num_rows_; ++i) {
    float* data = RowData(i);
    for (MatrixIndexT j = 0; j < num_cols_; ++j) {
      if (data[j] > ceil)
        data[j] = ceil;
      else if(data[j] < floor)
        data[j] = floor;
    }
  }
}

void MatrixBase::MulColsVec(const VectorBase& scale) {
  SNOWBOY_ASSERT(scale.Dim() == num_cols_);
  for (MatrixIndexT c = 0; c < num_cols_; ++c) {
    float scalar = scale(c);
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      (*this)(r, c) *= scalar;
    }
  }
}

void MatrixBase::MulRowsVec(const VectorBase& scale) {
  SNOWBOY_ASSERT(scale.Dim() == num_rows_);
  for (MatrixIndexT r = 0; r < num_rows_; r++) {
    float scalar = scale(r);
    for (MatrixIndexT c = 0; c < num_cols_; c++) {
      (*this)(r, c) *= scalar;
    }
  }
}

void MatrixBase::Read(const bool binary, const bool add, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  Matrix tmp(num_rows_, num_cols_);
  tmp.Read(binary, false, is);
  if (tmp.NumRows() != num_rows_ || tmp.NumCols() != num_cols_) {
    SNOWBOY_ERROR << "Fail to read Matrix: size mismatch "
        << num_rows_ << " x " << num_cols_ << " v.s. "
        << tmp.NumRows() << " x " << tmp.NumCols();
  }
  if (add) {
    AddMat(1.0, tmp);
  } else {
    CopyFromMat(tmp);
  }
}

void MatrixBase::Read(const bool binary, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  Read(binary, false, is);
}

void MatrixBase::Write(const bool binary, std::ostream* os) const {
  SNOWBOY_ASSERT(os != NULL);
  if (!os->good()) {
    SNOWBOY_ERROR << "Fail to write Matrix to stream.";
  }
  if (binary) {
    WriteToken(binary, "FM", os);   // We only write float value.
    int32 rows = num_rows_;         // 32-bit on disk.
    int32 cols = num_cols_;         // 32-bit on disk
    SNOWBOY_ASSERT(num_rows_ == (MatrixIndexT)(rows));
    SNOWBOY_ASSERT(num_cols_ == (MatrixIndexT)(cols));
    WriteBasicType(binary, rows, os);
    WriteBasicType(binary, cols, os);
    if (Stride() == NumCols()) {
      os->write(reinterpret_cast<const char*>(Data()),
                sizeof(float) * static_cast<size_t>(num_rows_)
                * static_cast<size_t>(num_cols_));
    } else {
      for (MatrixIndexT i = 0; i < num_rows_; ++i) {
        os->write(reinterpret_cast<const char*>(RowData(i)),
                  sizeof(float) * static_cast<size_t>(num_cols_));
      }
    }
  } else {
    if (num_cols_ == 0) {
      *os << " [ ]\n";
    } else {
      *os << " [";
      for (MatrixIndexT i = 0; i < num_rows_; ++i) {
        *os << "\n  ";
        for (MatrixIndexT j = 0; j < num_cols_; ++j)
          *os << (*this)(i, j) << " ";
      }
      *os << "]\n";
    }
  }
  if (!os->good()) {
    SNOWBOY_ERROR << "Fail to write Matrix to stream.";
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Matrix class
//
////////////////////////////////////////////////////////////////////////////////

void Matrix::Resize(const MatrixIndexT rows,
                    const MatrixIndexT cols,
                    const MatrixResizeType resize_type) {
  // First, checks if the current dimension satisfies the requested one.
  if (num_rows_ == rows && num_cols_ == cols) {
    if (resize_type == kSetZero) {
      Set(0);
    }
    return;
  }

  MatrixResizeType local_resize_type = resize_type;

  // Second, handles the kCopyData case.
  if (local_resize_type == kCopyData) {
    if (data_ == NULL || num_rows_ == 0 || num_cols_ == 0) {
      local_resize_type = kSetZero;
    } else {
      MatrixResizeType new_resize_type =
          (rows > num_rows_ || cols > num_cols_) ? kSetZero : kUndefined;
      Matrix tmp(rows, cols, new_resize_type);
      MatrixIndexT rows_min = std::min(rows, num_rows_);
      MatrixIndexT cols_min = std::min(cols, num_cols_);
      tmp.Range(0, rows_min, 0, cols_min).
          CopyFromMat(Range(0, rows_min, 0, cols_min));
      tmp.Swap(this);
      return;
    }
  }

  // Now, resize type is either kSetZero or kUndefined.
  if (data_ != NULL) {
    ReleaseMatrixMemory();
  }
  AllocateMatrixMemory(rows, cols);
  if (local_resize_type == kSetZero) {
    Set(0);
  }
}

void Matrix::Swap(Matrix* other) {
  std::swap(num_cols_, other->num_cols_);
  std::swap(num_rows_, other->num_rows_);
  std::swap(stride_, other->stride_);
  std::swap(data_, other->data_);
}

void Matrix::RemoveRow(MatrixIndexT row) {
  SNOWBOY_ASSERT(row >=0 && row < num_rows_);
  for (MatrixIndexT r = row + 1; r < num_rows_; ++r) {
    Row(r - 1).CopyFromVec(Row(r));
  }
  num_rows_--;
}

void Matrix::Append(const MatrixBase &mat) {
  MatrixIndexT old_num_rows_ = num_rows_;
  Resize(old_num_rows_ + mat.NumRows(), mat.NumCols(), kCopyData);
  RowRange(old_num_rows_, mat.NumRows()).CopyFromMat(mat);
}

void Matrix::Transpose() {
  if (num_rows_ != num_cols_) {
    Matrix tmp(*this, kTrans);
    Resize(num_cols_, num_rows_, kUndefined);
    CopyFromMat(tmp);
  } else {
    (static_cast<MatrixBase&>(*this)).Transpose();
  }
}

Matrix& Matrix::operator=(const Matrix& other) {
  if (num_rows_ != other.NumRows() || num_cols_ != other.NumCols()) {
    Resize(other.NumRows(), other.NumCols(), kUndefined);
  }
  CopyFromMat(other);
  return *this;
}

Matrix& Matrix::operator=(const MatrixBase& other) {
  if (num_rows_ != other.NumRows() || num_cols_ != other.NumCols()) {
    Resize(other.NumRows(), other.NumCols(), kUndefined);
  }
  CopyFromMat(other);
  return *this;
}

void Matrix::AllocateMatrixMemory(const MatrixIndexT rows,
                                  const MatrixIndexT cols) {
  SNOWBOY_ASSERT(rows >= 0 && cols >= 0);

  if (rows == 0 || cols == 0) {
    num_rows_ = 0;
    num_cols_ = 0;
    stride_ = 0;
    data_ = NULL;
    return;
  }

  SNOWBOY_ASSERT(SNOWBOY_MEM_ALIGN % sizeof(float) == 0);
  size_t num_per_align = SNOWBOY_MEM_ALIGN / sizeof(float);
  MatrixIndexT pad = (num_per_align - cols % num_per_align) % num_per_align;
  size_t size = sizeof(float)
      * static_cast<size_t>(rows) * static_cast<size_t>(cols + pad);
  void* data = SnowboyMemalign(SNOWBOY_MEM_ALIGN, size);

  if (data != NULL) {
    data_ = static_cast<float*>(data);
    num_rows_ = rows;
    num_cols_ = cols;
    stride_ = cols + pad;
  } else {
    throw std::bad_alloc();
  }
}

void Matrix::ReleaseMatrixMemory() {
  if (data_ != NULL)
    SnowboyMemalignFree(data_);
  num_rows_ = 0;
  num_cols_ = 0;
  stride_ = 0;
  data_ = NULL;
}

void Matrix::Read(const bool binary, const bool add, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  if (add) {
    Matrix tmp;
    tmp.Read(binary, false, is);
    if (num_rows_ == 0) {
      Resize(tmp.NumRows(), tmp.NumCols());
    } else {
      if (tmp.NumRows() != num_rows_
          || tmp.NumCols() != num_cols_) {
        SNOWBOY_ERROR << "Fail to read Matrix: size mismatch "
            << num_rows_ << " x " << num_cols_ << " v.s. "
            << tmp.NumRows() << " x " << tmp.NumCols();
      }
    }
    AddMat(1.0, tmp);
    return;
  }

  if (binary) {
    int32 num_rows, num_cols;
    ExpectToken(binary, "FM", is);
    ReadBasicType(binary, &num_rows, is);
    ReadBasicType(binary, &num_cols, is);
    if ((MatrixIndexT)(num_rows) != num_rows_
        || (MatrixIndexT)(num_cols) != num_cols_) {
      Resize(num_rows, num_cols);
    }
    if (num_rows * num_cols != 0) {
      if (stride_ == num_cols_) {
        is->read(reinterpret_cast<char*>(data_),
                 sizeof(float) * num_rows * num_cols);
      } else {
        for (MatrixIndexT i = 0; i < (MatrixIndexT)(num_rows); ++i) {
          is->read(reinterpret_cast<char*>(RowData(i)),
                   sizeof(float) * num_cols);
          if (is->fail()) {
            break;
          }
        }
      }
    }
    if (is->fail()) {
      SNOWBOY_ERROR << "Fail to read Matrix.";
    }
  } else {
    ExpectToken(binary, "[", is);
    std::vector<float> data;
    int32 num_rows = 0;
    int32 num_cols = 0;
    int32 this_num_cols = 0;
    bool is_end = false;
    while (!is_end) {
      int next_char = is->peek();
      if (next_char == '-' || (next_char >= '0' && next_char <= '9')) {
        float f;
        *is >> f;
        if ((!std::isspace(is->peek()))
            && is->peek() != ']' && is->peek() != ';') {
          SNOWBOY_ERROR << "Fail to read Matrix: expecting space after number.";
        }
        data.push_back(f);
        this_num_cols++;
      } else if (next_char == ' ' || next_char == '\t') {
        is->get();
      } else if (next_char == ']') {
        is->get();
        next_char = is->peek();
        if (next_char == '\r') {    // '\r''\n'
          is->get();
          is->get();
        } else if (next_char == '\n') {   // '\n'
          is->get();
        }
        is_end = true;
        num_rows++;
      } else if (next_char == '\n' || next_char == ';') {
        is->get();
        if (num_cols == 0 && num_cols != this_num_cols) {
          num_cols = this_num_cols;
        }
        if (num_cols != this_num_cols) {
          SNOWBOY_ERROR << "Fail to read Matrix: matrix has inconsistent "
              << "number of columns.";
        }
        num_rows++;
        this_num_cols = 0;
      } else if (next_char == -1) {
        SNOWBOY_ERROR << "Fail to read Matrix: EOF detected while reading.";
      } else {
        std::string str;
        *is >> str;
        // We do not allow "infinity" and "nan".
        SNOWBOY_ERROR << "Fail to read Matrix: expecting numeric data, got "
            << str;
      }
      if (is->fail()) {
        SNOWBOY_ERROR << "Fail to read Matrix.";
      }
      if (is_end) {
        SNOWBOY_ASSERT(data.size() == num_rows * num_cols);
        Resize(num_rows, num_cols);
        for (int32 i = 0; i < num_rows; ++i) {
          for (int32 j = 0; j < num_cols; ++j) {
            (*this)(i, j) = data[i * num_cols + j];
          }
        }
      }
    }
  }
}

void Matrix::Read(const bool binary, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  Read(binary, false, is);
}

////////////////////////////////////////////////////////////////////////////////
//
// SubMatrix class
//
////////////////////////////////////////////////////////////////////////////////

SubMatrix::SubMatrix(const MatrixBase& mat,
                     const MatrixIndexT row_offset,
                     const MatrixIndexT num_rows,
                     const MatrixIndexT col_offset,
                     const MatrixIndexT num_cols) {
  SNOWBOY_ASSERT(row_offset >= 0 && num_rows >= 0);
  SNOWBOY_ASSERT(col_offset >= 0 && num_cols >= 0);
  SNOWBOY_ASSERT(row_offset + num_rows <= mat.NumRows());
  SNOWBOY_ASSERT(col_offset + num_cols <= mat.NumCols());
  num_rows_ = num_rows;
  num_cols_ = num_cols;
  stride_ = mat.Stride();
  data_ = const_cast<float*>(mat.Data()
                             + row_offset * mat.Stride() + col_offset);
}

////////////////////////////////////////////////////////////////////////////////
//
// Functions
//
////////////////////////////////////////////////////////////////////////////////

bool IsEqual(const float tolerance,
             const MatrixBase& mat1, const MatrixBase& mat2) {
  if (mat1.NumRows() != mat2.NumRows()) {
    return false;
  }
  if (mat1.NumCols() != mat2.NumCols()) {
    return false;
  }

  for (int32 r = 0; r < mat1.NumRows(); ++r) {
    for (int32 c = 0; c < mat2.NumCols(); ++c) {
      if (std::abs(mat1(r, c) - mat2(r, c)) > tolerance) {
        return false;
      }
    }
  }

  return true;
}

} // namespace snowboy
