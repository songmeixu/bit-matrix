// matrix/vector-wrapper.cc

// Copyright 2016  KITT.AI (author: Guoguo Chen)

// Note:
// This code was modified extensively from src/kaldi-vector.cc in the Kaldi
// speech recognition toolkit. The original copyright is as follows:

// Copyright 2009-2011  Microsoft Corporation;  Lukas Burget;
//                      Saarland University;   Go Vivace Inc.;  Ariya Rastrow;
//                      Petr Schwarz;  Yanmin Qian;  Jan Silovsky;
//                      Haihua Xu; Wei Shi
//                2015  Guoguo Chen


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

#include <algorithm>
#include <cmath>
#include <cstring>

#include "matrix/matrix-wrapper.h"
#include "matrix/vector-wrapper.h"
#include "utils/snowboy-io.h"
#include "utils/snowboy-math.h"

namespace snowboy {

////////////////////////////////////////////////////////////////////////////////
//
// VectorBase class
//
////////////////////////////////////////////////////////////////////////////////

bool VectorBase::IsZero(const float cutoff) const {
  float abs_max = 0.0;
  for (MatrixIndexT i = 0; i < Dim(); ++i)
    abs_max = std::max(std::fabs(data_[i]), abs_max);
  return (abs_max <= cutoff);
}

void VectorBase::Set(const float value) {
  std::fill(data_, data_ + dim_, value);
}

void VectorBase::SetZero() {
  std::memset(data_, 0, dim_ * sizeof(float));
}

void VectorBase::SetRandomGaussian() {
  for (MatrixIndexT i = 0; i < Dim(); ++i) {
    data_[i] = RandomGaussian();
  }
}

void VectorBase::SetRandomUniform() {
  for (MatrixIndexT i = 0; i < Dim(); ++i) {
    data_[i] = RandomUniform();
  }
}

SubVector VectorBase::Range(const MatrixIndexT origin,
                            const MatrixIndexT length) {
  return SubVector(*this, origin, length);
}

const SubVector VectorBase::Range(const MatrixIndexT origin,
                                  const MatrixIndexT length) const {
  return SubVector(*this, origin, length);
}

void VectorBase::CopyFromVec(const VectorBase& vec) {
  SNOWBOY_ASSERT(Dim() == vec.Dim());
  if (data_ != vec.data_) {
    std::memcpy(data_, vec.data_, sizeof(float) * dim_);
  }
}

void VectorBase::CopyRowsFromMat(const MatrixBase& mat) {
  SNOWBOY_ASSERT(dim_ == mat.NumCols() * mat.NumRows());

  const MatrixIndexT cols = mat.NumCols();
  const MatrixIndexT rows = mat.NumRows();

  if (mat.Stride() == cols) {
    memcpy(data_, mat.Data(), sizeof(float) * rows * cols);
  } else {
    for (MatrixIndexT r = 0; r < rows; ++r) {
      memcpy(data_ + r * cols, mat.RowData(r), sizeof(float) * cols);
    }
  }
}

void VectorBase::CopyColsFromMat(const MatrixBase& mat) {
  SNOWBOY_ASSERT(dim_ == mat.NumCols() * mat.NumRows());

  for (MatrixIndexT r = 0; r < mat.NumRows(); ++r) {
    for (MatrixIndexT c = 0; c < mat.NumCols(); ++c) {
      data_[c * mat.NumRows() + r] = mat(r, c);
    }
  }
}

float VectorBase::Sum() const {
  float sum = 0.0;
  for (MatrixIndexT d = 0; d < dim_; ++d) {
    sum += data_[d];
  }
  return sum;
}

void VectorBase::Add(const float value) {
  for (MatrixIndexT d = 0; d < dim_; ++d) {
    data_[d] += value;
  }
}

void VectorBase::AddVec(const float alpha, const VectorBase& vec) {
  SNOWBOY_ASSERT(dim_ == vec.dim_);
  SNOWBOY_ASSERT(&vec != this);
  cblas_saxpy(dim_, alpha, vec.Data(), 1, data_, 1);
}

void VectorBase::AddVec2(const float alpha, const VectorBase& vec) {
  SNOWBOY_ASSERT(dim_ == vec.dim_);
  if (alpha != 1.0) {
    for (MatrixIndexT d = 0; d < dim_; ++d) {
      data_[d] += alpha * vec.data_[d] * vec.data_[d];
    }
  } else {
    for (MatrixIndexT d = 0; d < dim_; ++d) {
      data_[d] += vec.data_[d] * vec.data_[d];
    }
  }
}

void VectorBase::AddDiagMat2(const float alpha, const MatrixBase& mat,
                             const MatrixTransposeType trans,
                             const float beta) {
  if (trans == kNoTrans) {
    SNOWBOY_ASSERT(dim_ == mat.NumRows());
    MatrixIndexT cols = mat.NumCols(), mat_stride = mat.Stride();
    float* data = data_;
    const float* mat_data = mat.Data();
    for (MatrixIndexT i = 0; i < dim_; i++, mat_data += mat_stride, data++) {
      *data = beta * *data + alpha * cblas_sdot(cols, mat_data, 1, mat_data, 1);
    }
  } else {
    SNOWBOY_ASSERT(dim_ == mat.NumCols());
    MatrixIndexT rows = mat.NumRows(), mat_stride = mat.Stride();
    float* data = data_;
    const float* mat_data = mat.Data();
    for (MatrixIndexT i = 0; i < dim_; i++, mat_data++, data++)
      *data = beta * *data + alpha * cblas_sdot(rows, mat_data, mat_stride,
                                                mat_data, mat_stride);
  }
}

void VectorBase::Scale(const float alpha) {
  cblas_sscal(dim_, alpha, data_, 1);
}

void VectorBase::MulElements(const VectorBase& vec) {
  SNOWBOY_ASSERT(dim_ == vec.Dim());
  for (MatrixIndexT d = 0; d < dim_; ++d) {
    data_[d] *= vec(d);
  }
}

float VectorBase::DotVec(const VectorBase& vec) const {
  SNOWBOY_ASSERT(dim_ == vec.Dim());
  return cblas_sdot(dim_, data_, 1, vec.Data(), 1);
}

void VectorBase::ApplyFloor(const float floor) {
  for (MatrixIndexT d = 0; d < dim_; ++d) {
    if (data_[d] < floor) {
      data_[d] = floor;
    }
  }
}

void VectorBase::ApplyLog() {
  for (MatrixIndexT d = 0; d < dim_; ++d) {
    SNOWBOY_ASSERT(data_[d] > 0);
    data_[d] = std::log(data_[d]);
  }
}

void VectorBase::ApplyPow(const float power) {
  if (power == 1.0) {
    return;
  }
  if (power == 2.0) {
    for (MatrixIndexT i = 0; i < dim_; i++) {
      data_[i] = data_[i] * data_[i];
    }
  } else if (power == 0.5) {
    for (MatrixIndexT i = 0; i < dim_; i++) {
      if (!(data_[i] >= 0.0)) {
        SNOWBOY_ERROR << "Cannot take square root of negative value "
            << data_[i];
      }
      data_[i] = std::sqrt(data_[i]);
    }
  } else {
    for (MatrixIndexT i = 0; i < dim_; i++) {
      data_[i] = pow(data_[i], power);
      if (data_[i] == HUGE_VAL) {
        SNOWBOY_ERROR << "Could not raise element "  << i << " to power "
            << power << ": returned value = " << data_[i];
      }
    }
  }
}

float VectorBase::ApplySoftmax() {
  float max = Max(), sum = 0.0;
  float* data = data_;
  for (MatrixIndexT i = 0; i < dim_; ++i) {
    sum += (data[i] = std::exp(data[i] - max));
  }
  Scale(1.0 / sum);
  return max + std::log(sum);
}

void VectorBase::AddMatVec(const float alpha, const MatrixBase& mat,
                           const MatrixTransposeType trans,
                           const VectorBase& vec, const float beta) {
  if (trans == kNoTrans) {
    SNOWBOY_ASSERT(mat.NumRows() == dim_ && mat.NumCols() == vec.Dim());
  } else {
    SNOWBOY_ASSERT(mat.NumCols() == dim_ && mat.NumRows() == vec.Dim());
  }
  SNOWBOY_ASSERT(this != &vec);
  cblas_sgemv(CblasRowMajor, static_cast<CBLAS_TRANSPOSE>(trans),
              mat.NumRows(), mat.NumCols(), alpha,
              mat.Data(), mat.Stride(), vec.Data(), 1, beta, data_, 1);
}

float VectorBase::Max() const {
  float ans = -std::numeric_limits<float>::infinity();
  const float* data = data_;
  MatrixIndexT i;
  for (i = 0; i + 4 <= dim_; i += 4) {
    float a1 = data[i], a2 = data[i + 1], a3 = data[i + 2], a4 = data[i + 3];
    if (a1 > ans || a2 > ans || a3 > ans || a4 > ans) {
      float b1 = (a1 > a2 ? a1 : a2), b2 = (a3 > a4 ? a3 : a4);
      if (b1 > ans) ans = b1;
      if (b2 > ans) ans = b2;
    }
  }
  for (; i < dim_; ++i) {
    if (data[i] > ans) {
      ans = data[i];
    }
  }
  return ans;
}

float VectorBase::Max(MatrixIndexT* index) const {
  SNOWBOY_ASSERT(index != NULL);
  float ans = -std::numeric_limits<float>::infinity();
  *index = -1;
  const float* data = data_;
  MatrixIndexT i;
  for (i = 0; i + 4 <= dim_; i += 4) {
    float a1 = data[i], a2 = data[i + 1], a3 = data[i + 2], a4 = data[i + 3];
    if (a1 > ans || a2 > ans || a3 > ans || a4 > ans) {
      if (a1 > ans) { ans = a1; *index = i; }
      if (a2 > ans) { ans = a2; *index = i + 1; }
      if (a3 > ans) { ans = a3; *index = i + 2; }
      if (a4 > ans) { ans = a4; *index = i + 3; }
    }
  }
  for (; i < dim_; ++i) {
    if (data[i] > ans) {
      ans = data[i];
      *index = i;
    }
  }
  return ans;
}

float VectorBase::Min() const {
  float ans = std::numeric_limits<float>::infinity();
  const float* data = data_;
  MatrixIndexT i;
  for (i = 0; i + 4 <= dim_; i += 4) {
    float a1 = data[i], a2 = data[i + 1], a3 = data[i + 2], a4 = data[i + 3];
    if (a1 < ans || a2 < ans || a3 < ans || a4 < ans) {
      float b1 = (a1 < a2 ? a1 : a2), b2 = (a3 < a4 ? a3 : a4);
      if (b1 < ans) ans = b1;
      if (b2 < ans) ans = b2;
    }
  }
  for (; i < dim_; ++i) {
    if (data[i] < ans) {
      ans = data[i];
    }
  }
  return ans;
}

float VectorBase::Min(MatrixIndexT* index) const {
  SNOWBOY_ASSERT(index != NULL);
  float ans = std::numeric_limits<float>::infinity();
  *index = -1;
  const float* data = data_;
  MatrixIndexT i;
  for (i = 0; i + 4 <= dim_; i += 4) {
    float a1 = data[i], a2 = data[i + 1], a3 = data[i + 2], a4 = data[i + 3];
    if (a1 < ans || a2 < ans || a3 < ans || a4 < ans) {
      if (a1 < ans) { ans = a1; *index = i; }
      if (a2 < ans) { ans = a2; *index = i + 1; }
      if (a3 < ans) { ans = a3; *index = i + 2; }
      if (a4 < ans) { ans = a4; *index = i + 3; }
    }
  }
  for (; i < dim_; ++i) {
    if (data[i] < ans) {
      ans = data[i];
      *index = i;
    }
  }
  return ans;
}

float VectorBase::Norm(float p) const {
  SNOWBOY_ASSERT(p >= 0.0f);
  float sum = 0.0f;
  if (p == 0.0f) {
    for (MatrixIndexT d = 0; d < dim_; ++d) {
      if (data_[d] != 0.0f) {
        sum += 1.0f;
      }
    }
    return sum;
  } else if (p == 1.0f) {
    for (MatrixIndexT d = 0; d < dim_; ++d) {
      sum += std::abs(data_[d]);
    }
    return sum;
  } else if (p == 2.0f) {
    return cblas_snrm2(dim_, data_, 1);
  } else {
    float tmp;
    bool ok = true;
    for (MatrixIndexT d = 0; d < dim_; d++) {
      tmp = std::pow(std::abs(data_[d]), p);
      if (tmp == HUGE_VAL) {
        // HUGE_VAL is what pow returns on error.
        ok = false;
      }
      sum += tmp;
    }
    tmp = std::pow(sum, static_cast<float>(1.0f / p));
    SNOWBOY_ASSERT(tmp != HUGE_VAL);
    if (ok) {
      return tmp;
    } else {
      float maximum = this->Max(), minimum = this->Min(),
            max_abs = std::max(maximum, -minimum);
      SNOWBOY_ASSERT(max_abs > 0);
      Vector tmp_vec(*this);
      tmp_vec.Scale(1.0f / max_abs);
      return tmp_vec.Norm(p) * max_abs;
    }
  }
}

float VectorBase::EuclideanDistance(const VectorBase& vec) const {
  SNOWBOY_ASSERT(dim_ == vec.Dim());
  float sum = 0.0f;
  for (MatrixIndexT d = 0; d < dim_; ++d) {
    sum += (data_[d] - vec(d)) * (data_[d] - vec(d));
  }
  return std::sqrt(sum);
}

float VectorBase::CosineDistance(const VectorBase& vec) const {
  SNOWBOY_ASSERT(dim_ == vec.Dim());
  float similarity = this->DotVec(vec) / this->Norm(2) / vec.Norm(2);
  return (1.0f - similarity) / 2.0f;
}

void VectorBase::Read(const bool binary, const bool add, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  Vector tmp(Dim());
  tmp.Read(binary, false, is);
  if (Dim() != tmp.Dim()) {
    SNOWBOY_ERROR << "Fail to read Vector: size mismatch " << Dim()
        << " vs. " << tmp.Dim();
  }
  if (add) {
    AddVec(1.0, tmp);
  } else {
    CopyFromVec(tmp);
  }
}

void VectorBase::Read(const bool binary, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  Read(binary, false, is);
}

void VectorBase::Write(const bool binary, std::ostream* os) const {
  SNOWBOY_ASSERT(os != NULL);
  if (!os->good()) {
    SNOWBOY_ERROR << "Fail to write Vector to stream.";
  }
  if (binary) {
    WriteToken(binary, "FV", os);   // We only write float value.
    int32 size = Dim();             // 32-bit on disk.
    SNOWBOY_ASSERT(Dim() == (MatrixIndexT)(size));
    WriteBasicType(binary, size, os);
    os->write(reinterpret_cast<const char*>(Data()), sizeof(float) * size);
  } else {
    *os << " [ ";
    for (MatrixIndexT i = 0; i < Dim(); ++i) {
      *os << (*this)(i) << " ";
    }
    *os << "]\n";
  }
  if (!os->good()) {
    SNOWBOY_ERROR << "Fail to write Vector to stream.";
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Vector class
//
////////////////////////////////////////////////////////////////////////////////

void Vector::Resize(const MatrixIndexT dim,
                    const MatrixResizeType resize_type) {
  // First, checks if the current dimension satisfies the requested one.
  if (dim_ == dim) {
    if (resize_type == kSetZero) {
      Set(0);
    }
    return;
  }

  MatrixResizeType local_resize_type = resize_type;

  // Second, handles the kCopyData case.
  if (local_resize_type == kCopyData) {
    if (data_ == NULL || dim_ == 0) {
      // Old vector is empty, we have nothing to copy.
      local_resize_type = kSetZero;
    } else {
      MatrixResizeType new_resize_type = (dim > dim_) ? kSetZero : kUndefined;
      Vector tmp(dim, new_resize_type);
      MatrixIndexT dim_min = std::min(dim, dim_);
      memcpy(tmp.data_, data_, sizeof(float) * dim_min);
      tmp.Swap(this);
      return;
    }
  }

  // Now, resize type is either kSetZero or kUndefined.
  if (data_ != NULL) {
    ReleaseVectorMemory();
  }
  AllocateVectorMemory(dim);
  if (local_resize_type == kSetZero) {
    Set(0);
  }
}

void Vector::Swap(Vector* other) {
  std::swap(data_, other->data_);
  std::swap(dim_, other->dim_);
}

void Vector::RemoveElement(const MatrixIndexT index) {
  SNOWBOY_ASSERT(index < dim_ && index >= 0);
  for (MatrixIndexT j = index + 1; j < dim_; ++j) {
    data_[j - 1] = data_[j];
  }
  dim_--;
}

Vector& Vector::operator=(const Vector& other) {
  if (dim_ != other.Dim()) {
    Resize(other.Dim(), kUndefined);
  }
  CopyFromVec(other);
  return *this;
}

Vector& Vector::operator=(const VectorBase& other) {
  if (dim_ != other.Dim()) {
    Resize(other.Dim(), kUndefined);
  }
  CopyFromVec(other);
  return *this;
}

void Vector::AllocateVectorMemory(const MatrixIndexT dim) {
  SNOWBOY_ASSERT(dim >= 0);

  if (dim == 0) {
    dim_ = 0;
    data_ = NULL;
    return;
  }

  SNOWBOY_ASSERT(SNOWBOY_MEM_ALIGN % sizeof(float) == 0);
  size_t size = sizeof(float) * static_cast<size_t>(dim);
  void* data = SnowboyMemalign(SNOWBOY_MEM_ALIGN, size);

  if (data != NULL) {
    data_ = static_cast<float*>(data);
    dim_ = dim;
  } else {
    throw std::bad_alloc();
  }
}

void Vector::ReleaseVectorMemory() {
  if (data_ != NULL)
    SnowboyMemalignFree(data_);
  data_ = NULL;
  dim_ = 0;
}

void Vector::Read(const bool binary, const bool add, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  if (add) {
    Vector tmp(Dim());
    tmp.Read(binary, false, is);
    if (Dim() == 0) {
      Resize(tmp.Dim());
    }
    if (Dim() != tmp.Dim()) {
      SNOWBOY_ERROR << "Fail to read Vector: size mismatch " << Dim()
          << " vs. " << tmp.Dim();
    }
    AddVec(1.0, tmp);
    return;
  }

  if (binary) {
    int32 size;
    ExpectToken(binary, "FV", is);
    ReadBasicType(binary, &size, is);
    if ((MatrixIndexT)(size) != Dim()) {
      Resize(size);
    }
    if (size > 0) {
      is->read(reinterpret_cast<char*>(data_), sizeof(float) * size);
    }
    if (is->fail()) {
      SNOWBOY_ERROR << "Fail to read Vector.";
    }
  } else {  // Text mode reading; format is " [ 1.1 2.0 3.4 ]\n"
    ExpectToken(binary, "[", is);
    std::vector<float> data;
    bool is_end = false;
    while (!is_end) {
      int next_char = is->peek();
      if (next_char == '-' || (next_char >= '0' && next_char <= '9')) {
        float f;
        *is >> f;
        if ((!std::isspace(is->peek())) && is->peek() != ']') {
          SNOWBOY_ERROR << "Fail to read Vector: expecting space after number.";
        }
        data.push_back(f);
      } else if (next_char == ' ' || next_char == '\t') {
        is->get();
      } else if (next_char == ']') {
        is->get();
        next_char = is->peek();
        if (next_char == '\r') {   // '\r''\n'
          is->get();
          is->get();
        } else if (next_char == '\n') {   // '\n'
          is->get();
        }
        is_end = true;
      } else if (next_char == '\n' || next_char == '\r') {
        SNOWBOY_ERROR << "Fail to read Vector: newline found while reading ("
            << "maybe it is a matrix?)";
      } else if (next_char == -1) {
        SNOWBOY_ERROR << "Fail to read Vector: EOF detected while reading.";
      } else {
        std::string str;
        *is >> str;
        // We do not allow "infinity" and "nan".
        SNOWBOY_ERROR << "Fail to read Vector: expecting numeric data, got "
            << str;
      }
      if (is->fail()) {
        SNOWBOY_ERROR << "Fail to read Vector.";
      }
      if (is_end) {
        Resize(data.size());
        for (size_t i = 0; i < data.size(); ++i) {
          data_[i] = data[i];
        }
      }
    }
  }
}

void Vector::Read(const bool binary, std::istream* is) {
  SNOWBOY_ASSERT(is != NULL);
  Read(binary, false, is);
}

////////////////////////////////////////////////////////////////////////////////
//
// SubVector class
//
////////////////////////////////////////////////////////////////////////////////

SubVector::SubVector(const VectorBase& vec,
                     const MatrixIndexT origin,
                     const MatrixIndexT length) {
  SNOWBOY_ASSERT(origin >= 0 && length >= 0 && origin + length <= vec.Dim());
  data_ = const_cast<float*>(vec.Data() + origin);
  dim_ = length;
}

SubVector::SubVector(const MatrixBase& mat, MatrixIndexT row) {
  data_ = const_cast<float*>(mat.RowData(row));
  dim_ = mat.NumCols();
}

SubVector::SubVector(const SubVector& other) {
  data_ = other.data_;
  dim_ = other.dim_;
}

////////////////////////////////////////////////////////////////////////////////
//
// Functions
//
////////////////////////////////////////////////////////////////////////////////

bool IsEqual(const float tolerance,
             const VectorBase& vec1, const VectorBase& vec2) {
  if (vec1.Dim() != vec2.Dim()) {
    return false;
  }

  for (int32 d = 0; d < vec1.Dim(); ++d) {
    if (std::abs(vec1(d) - vec2(d)) > tolerance) {
      return false;
    }
  }

  return true;
}

}  // namespace snowboy
