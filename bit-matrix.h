// Copyright 2017  Baidu (author: Meixu Song)


#ifndef SNOWBOY_BIT_MATRIX_H_H
#define SNOWBOY_BIT_MATRIX_H_H

#include "matrix/matrix-common.h"
#include "matrix/bit-vector.h"
#include "utils/snowboy-debug.h"
#include "utils/snowboy-types.h"
#include "utils/snowboy-utils.h"

namespace snowboy {

//const align_size = sizeof(64);

//void Quantize(const MatrixBase &in, int32 in_to_bits, BitMatrix *out);

void MatBitMat(const MatrixBase &x, const BitMatrix &y, MatrixBase *out);
void BitMatBitMat(const BitMatrix &x, const BitMatrix &y, MatrixBase *out);

class BitMatrix {
 public:
  explicit BitMatrix(const MatrixBase &in, int32 in_bits);

  explicit BitMatrix(const MatrixBase &in, int32 quant_bits, int32 align_bits);

  explicit BitMatrix(const MatrixIndexT rows,
                     const MatrixIndexT cols) :
      data_(NULL), scale_(1), quant_bits_(0) {
    align_bits_ = 8 * sizeof(uint64);
    Resize(rows, cols);
  }

  // Constructor, this version creates an empty matrix, and is only callable
  // from child classes.
  BitMatrix() : num_rows_(0), num_cols_(0), stride_(0),
                         data_(NULL),
                         scale_(0), quant_bits_(0) {
    align_bits_ = 8 * sizeof(uint64);
  }

  // Constructor, this version creates a matrix with given data, and is only
  // callable from child classes.
//  explicit BitMatrix(const MatrixIndexT rows,
//                     const MatrixIndexT cols,
//                     const MatrixIndexT stride,
//                     uint64 *data) :
//      num_rows_(rows), num_cols_(cols), stride_(stride), data_(data) {}

  // Destructor, only callable from child classes.
  ~BitMatrix() {}

  BitMatrix& operator=(const BitMatrix& other) {
    if (num_rows_ != other.NumRows() || num_cols_ != other.NumCols()) {
      Resize(other.NumRows(), other.NumCols());
    }
    scale_ = other.Scale();
    quant_bits_ = other.QuantBits();
    align_bits_ = other.AlignBits();
    CopyFromBitMat(other);
    return *this;
  }

  void CopyFromBitMat(const BitMatrix& mat);

  void ToMatrix(MatrixBase *out) const;

  // Returns number of rows.
  inline MatrixIndexT NumRows() const { return num_rows_; }

  // Returns number of columns.
  inline MatrixIndexT NumCols() const { return num_cols_; }

  // Returns the stride, which is the distance in memory between each row.
  inline MatrixIndexT Stride() const { return stride_; }

  // Returns pointer to the data.
  inline uint64* Data() { return data_; }
  inline const uint64* Data() const { return data_; }

  // Returns pointer to data for one row.
  inline uint64* RowData(const MatrixIndexT row) {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return data_ + row * stride_;
  }
  inline const uint64* RowData(const MatrixIndexT row) const {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return data_ + row * stride_;
  }

  // Returns specific row of matrix.
  inline BitVector Row(const MatrixIndexT row) {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return BitVector((*this), row);
  }
  inline const BitVector Row(const MatrixIndexT row) const {
    SNOWBOY_ASSERT(row < num_rows_ && row >= 0);
    return BitVector((*this), row);
  }

  // Returns the value at given index.
  inline const uint64 operator()(const MatrixIndexT row,
                                 const MatrixIndexT col) const {
    SNOWBOY_ASSERT(row < num_rows_ && col < num_cols_ && row >= 0 && col >= 0);
    return *(data_ + row * stride_ + col);
  }
  inline uint64 &operator()(const MatrixIndexT row,
                            const MatrixIndexT col) {
    SNOWBOY_ASSERT(row < num_rows_ && col < num_cols_ && row >= 0 && col >= 0);
    return *(data_ + row * stride_ + col);
  }

  // Sets all members of a matrix to a specified value.
  void Set(const uint64 value);

  void Resize(const MatrixIndexT rows,
              const MatrixIndexT cols);

  // Without transpose:
  // *this = beta * *this + alpha * mat1 * mat2^T.
  void AddBitMatBitMat(const BitMatrix &mat1,
                       const BitMatrix &mat2);

  void Quantize(const MatrixBase &in);

  // If <add> is true, then read the Vector from stream, and add it to the
  // current Vector.
  void Read(const bool binary, std::istream *is);

  void Write(const bool binary, std::ostream *os) const;

  friend void MatBitMat(const MatrixBase &x, const BitMatrix &y, MatrixBase *out);

  int32 QuantBits() const { return quant_bits_; }

  int32 AlignBits() const { return align_bits_; }

  float Scale() const { return scale_; }

  void Scale(float scale) { scale_ = scale; }

 protected:
  MatrixIndexT num_rows_;
  MatrixIndexT num_cols_;
  MatrixIndexT stride_;
  uint64 *data_;
  float scale_;
  int32 quant_bits_;
  int32 align_bits_;

  SNOWBOY_DISALLOW_COPY(BitMatrix);
 private:
  // Allocates memory for <data_>.
  void AllocateBitMatrixMemory(const MatrixIndexT rows, const MatrixIndexT cols);

  void ReleaseBitMatrixMemory();

  int32 quantize(float x);
  void BitVecBitVec();
};

}

#endif //SNOWBOY_BIT_MATRIX_H_H
