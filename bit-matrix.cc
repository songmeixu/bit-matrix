// Copyright 2017  Baidu (author: Meixu Song)


#include <cmath>
#include <cstring>

#include "matrix/bit-matrix.h"
#include "matrix/bit-kernel.h"
#include "matrix/matrix-wrapper.h"
#include "matrix/vector-wrapper.h"
#include "utils/snowboy-io.h"
#include "utils/snowboy-math.h"

#include <iostream>
#include <ctime>

namespace snowboy {

void BitMatrix::ReleaseBitMatrixMemory() {
  if (data_ != NULL)
    SnowboyMemalignFree(data_);
  num_rows_ = 0;
  num_cols_ = 0;
  stride_ = 0;
  data_ = NULL;
}

void BitMatrix::AllocateBitMatrixMemory(const MatrixIndexT rows,
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
  size_t num_per_align = SNOWBOY_MEM_ALIGN / sizeof(uint64);
  MatrixIndexT pad = (num_per_align - cols % num_per_align) % num_per_align;
  size_t size = sizeof(uint64)
      * static_cast<size_t>(rows) * static_cast<size_t>(cols + pad);
  void *data = SnowboyMemalign(SNOWBOY_MEM_ALIGN, size);

  if (data != NULL) {
    data_ = static_cast<uint64 *>(data);
    num_rows_ = rows;
    num_cols_ = cols;
    stride_ = cols + pad;
  } else {
    throw std::bad_alloc();
  }
}

void BitMatrix::Set(const uint64 value) {
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      (*this)(r, c) = value;
    }
  }
}

void BitMatrix::Resize(const MatrixIndexT rows,
                       const MatrixIndexT cols) {
  // First, checks if the current dimension satisfies the requested one.
  if (num_rows_ == rows && num_cols_ == cols) {
    Set(0);
    return;
  }

  // Now, resize type is either kSetZero or kUndefined.
  if (data_ != NULL) {
    ReleaseBitMatrixMemory();
  }
  AllocateBitMatrixMemory(rows, cols);
}

void BitMatrix::CopyFromBitMat(const BitMatrix& mat) {
  if ((void*)(&mat) == (void*)this) {
    return;
  }
  SNOWBOY_ASSERT(num_rows_ == mat.NumRows() && num_cols_ == mat.NumCols());
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    Row(r).CopyFromBitVec(mat.Row(r));
  }
}

// float * int, can use neon to accelarete?
// todo: combine BN & nonlinear together, and use 8/16-bit BN
// to avoid int -> float -> int -> float, use int always
void BitMatrix::ToMatrix(MatrixBase *out) const {
  if (quant_bits_ == 1) {
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      for (MatrixIndexT c = 0; c < num_cols_; ++c) {
        (*out)(r, c) = data_[r * stride_ + c] == 1 ? scale_ : -scale_;
      }
    }
  } else {
    for (MatrixIndexT r = 0; r < num_rows_; ++r) {
      for (MatrixIndexT c = 0; c < num_cols_; ++c) {
        (*out)(r, c) = scale_ * data_[r * stride_ + c];
      }
    }
  }
}

int32 BitMatrix::quantize(float x) {
  return roundf(x * (pow(2, quant_bits_) - 1));
}

void BitMatrix::Quantize(const MatrixBase &in) {
  SNOWBOY_ASSERT(align_bits_ > 0);
  if (num_rows_ != in.NumRows() || num_cols_ != in.NumCols() / (8 * sizeof(uint64) / align_bits_))
    Resize(in.NumRows(), in.NumCols() / (8 * sizeof(uint64) / align_bits_));
  if ((void *) (&in) == (void *) this) {
    return;
  }
  SNOWBOY_ASSERT(num_rows_ == in.NumRows() &&
      num_cols_ == in.NumCols() / (8 * sizeof(uint64) / align_bits_));
  SNOWBOY_ASSERT(align_bits_ >= quant_bits_);

  int32 contain_nums = 8 * sizeof(uint64) / align_bits_;
  // ToDo: make this robust to any num_cols_
  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      uint64 tmp = quantize(in(r, c * contain_nums));
      for (MatrixIndexT i = 1; i < contain_nums; ++i) {
        tmp = tmp << align_bits_;
        tmp += quantize(in(r, c * contain_nums + i));
      }
      data_[r * stride_ + c] = tmp;
    }
  }
}

// quantize Matrix in into in_bits, and store in BitMatrix
BitMatrix::BitMatrix(const MatrixBase &in, int32 in_bits) :
    num_rows_(0), num_cols_(0), stride_(0), data_(NULL) {
  quant_bits_ = in_bits;
  scale_ = 1 / (pow(2, quant_bits_) - 1);
  align_bits_ = in_bits;
  Resize(in.NumRows(), in.NumCols() / (8 * sizeof(uint64) / align_bits_));
  Quantize(in);
}

// quantize Matrix in into in_bits, and store in BitMatrix
BitMatrix::BitMatrix(const MatrixBase &in, int32 quant_bits, int32 align_bits) :
    num_rows_(0), num_cols_(0), stride_(0), data_(NULL) {
  quant_bits_ = quant_bits;
  scale_ = 1 / (pow(2, quant_bits_) - 1);
  align_bits_ = align_bits;
  Resize(in.NumRows(), in.NumCols() / (8 * sizeof(uint64) / align_bits_));
  Quantize(in);
}

void MatBitMat(const MatrixBase &x, const BitMatrix &y, MatrixBase *out) {
//  if (y.quant_bits_ == 1) {
//    for (MatrixIndexT r = 0; r < x.NumRows(); ++r) {
//      for (MatrixIndexT c = 0; c < x.NumCols(); ++c) {
//        float result = 0;
//        for (y(r,c) & weight[1)
//        x +=
//        data_[r * stride_ + c] = VecVec(mat1.Row(r), mat2.Row(c));
//      }
//    }
//  }
}

void BitMatrix::AddBitMatBitMat(const BitMatrix &mat1,
                                const BitMatrix &mat2) {
  SNOWBOY_ASSERT(mat1.NumCols() == mat2.NumCols() &&
      mat1.NumRows() == num_rows_ &&
      mat2.NumRows() == num_cols_);
  SNOWBOY_ASSERT(&mat1 != this && &mat2 != this);

  for (MatrixIndexT r = 0; r < num_rows_; ++r) {
    for (MatrixIndexT c = 0; c < num_cols_; ++c) {
      data_[r * stride_ + c] = VecVec(mat1.Row(r), mat2.Row(c));
    }
  }
  scale_ = mat1.scale_ * mat2.scale_;
}

void BitMatBitMat(const BitMatrix &x, const BitMatrix &y, MatrixBase *out) {
  SNOWBOY_ASSERT(x.NumCols() == y.NumCols() &&
      x.NumRows() == out->NumRows() &&
      y.NumRows() == out->NumCols());

  float scale = x.Scale() * y.Scale();
//  double begin, elapsed_secs = 0;
  for (MatrixIndexT r = 0; r < out->NumRows(); ++r) {
    for (MatrixIndexT c = 0; c < out->NumCols(); ++c) {
//      begin = clock();
      (*out)(r,c) = scale * VecVec(x.Row(r), y.Row(c));
//      elapsed_secs += double(clock() - begin) / CLOCKS_PER_SEC;
    }
  }
//  std::cout << "\tvecvec:" << elapsed_secs << std::endl;
}

void BitMatrix::Write(const bool binary, std::ostream* os) const {
  SNOWBOY_ASSERT(os != NULL);
  if (!os->good()) {
    SNOWBOY_ERROR << "Fail to write Matrix to stream.";
  }
  if (binary) {
    WriteToken(binary, "BM", os);   // We only write float value.
    int32 rows = num_rows_;         // 32-bit on disk.
    int32 cols = num_cols_;         // 32-bit on disk
    SNOWBOY_ASSERT(num_rows_ == (MatrixIndexT)(rows));
    SNOWBOY_ASSERT(num_cols_ == (MatrixIndexT)(cols));
    WriteBasicType(binary, rows, os);
    WriteBasicType(binary, cols, os);
    WriteToken(binary, "<QuantBits>", os);
    WriteBasicType(binary, quant_bits_, os);
    WriteToken(binary, "<AlignBits>", os);
    WriteBasicType(binary, align_bits_, os);
    WriteToken(binary, "<Scale>", os);
    WriteBasicType(binary, scale_, os);
    if (Stride() == NumCols()) {
      os->write(reinterpret_cast<const char*>(Data()),
                sizeof(uint64) * static_cast<size_t>(num_rows_)
                    * static_cast<size_t>(num_cols_));
    } else {
      for (MatrixIndexT i = 0; i < num_rows_; ++i) {
        os->write(reinterpret_cast<const char*>(RowData(i)),
                  sizeof(uint64) * static_cast<size_t>(num_cols_));
      }
    }
  } else {
    WriteToken(binary, "<QuantBits>", os);
    WriteBasicType(binary, quant_bits_, os);
    WriteToken(binary, "<AlignBits>", os);
    WriteBasicType(binary, align_bits_, os);
    WriteToken(binary, "<Scale>", os);
    WriteBasicType(binary, scale_, os);
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

void BitMatrix::Read(const bool binary, std::istream *is) {
  SNOWBOY_ASSERT(is != NULL);
  SNOWBOY_ASSERT(align_bits_ > 0 && (8 * sizeof(uint64)) % align_bits_ == 0);
  if (binary) {
    int32 num_rows, num_cols;
    ExpectToken(binary, "BM", is);
    ReadBasicType(binary, &num_rows, is);
    ReadBasicType(binary, &num_cols, is);
    ExpectToken(binary, "<QuantBits>", is);
    ReadBasicType(binary, &quant_bits_, is);
    ExpectToken(binary, "<AlignBits>", is);
    ReadBasicType(binary, &align_bits_, is);
    ExpectToken(binary, "<Scale>", is);
    ReadBasicType(binary, &scale_, is);
    SNOWBOY_ASSERT(align_bits_ >= quant_bits_);
    if ((MatrixIndexT) (num_rows) != num_rows_
        || (MatrixIndexT) (num_cols) != num_cols_) {
      Resize(num_rows, num_cols);
    }
    if (num_rows * num_cols != 0) {
      if (stride_ == num_cols_) {
        is->read(reinterpret_cast<char *>(data_),
                 sizeof(uint64) * num_rows * num_cols);
      } else {
        for (MatrixIndexT i = 0; i < (MatrixIndexT) (num_rows); ++i) {
          is->read(reinterpret_cast<char *>(RowData(i)),
                   sizeof(uint64) * num_cols);
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
    ExpectToken(binary, "<QuantBits>", is);
    ReadBasicType(binary, &quant_bits_, is);
    ExpectToken(binary, "<AlignBits>", is);
    ReadBasicType(binary, &align_bits_, is);
    ExpectToken(binary, "<Scale>", is);
    ReadBasicType(binary, &scale_, is);
    SNOWBOY_ASSERT(align_bits_ >= quant_bits_);
    ExpectToken(binary, "[", is);
    std::vector<uint64> data;
    int32 num_rows = 0;
    int32 num_cols = 0;
    int32 this_num_cols = 0;
    bool is_end = false;
    int32 contain_nums = (8 * sizeof(uint64)) / align_bits_;
    uint64 m = 0;
    while (!is_end) {
      int next_char = is->peek();
      if (next_char == '-' || (next_char >= '0' && next_char <= '9')) {
        uint64 f;
        *is >> f;
        if ((!std::isspace(is->peek()))
            && is->peek() != ']' && is->peek() != ';') {
          SNOWBOY_ERROR << "Fail to read Matrix: expecting space after number.";
        }
        this_num_cols++;
        m = (m << align_bits_) + f;
        if (this_num_cols % contain_nums == 0) {
          data.push_back(m);
          m = 0;
        }
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
        if (this_num_cols % contain_nums != 0) {
          m = m << align_bits_ * (contain_nums - this_num_cols % contain_nums);
          data.push_back(m);
          m = 0;
        }
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
        if (this_num_cols % contain_nums != 0) {
          m = m << align_bits_ * (contain_nums - this_num_cols % contain_nums);
          data.push_back(m);
          m = 0;
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
        num_cols = ceil(num_cols / contain_nums);
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

}
