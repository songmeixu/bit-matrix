// matrix/vector-wrapper.h

// Copyright 2016  KITT.AI (author: Guoguo Chen)

// Note:
// This code was modified extensively from src/kaldi-vector.h in the Kaldi
// speech recognition toolkit. The original copyright is as follows:

// Copyright 2009-2012   Ondrej Glembek;  Microsoft Corporation;  Lukas Burget;
//                       Saarland University (Author: Arnab Ghoshal);
//                       Ariya Rastrow;  Petr Schwarz;  Yanmin Qian;
//                       Karel Vesely;  Go Vivace Inc.;  Arnab Ghoshal
//                       Wei Shi;
//                2015   Guoguo Chen

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

#ifndef SNOWBOY_MATRIX_VECTOR_WRAPPER_H_
#define SNOWBOY_MATRIX_VECTOR_WRAPPER_H_

#include "matrix/matrix-common.h"
#include "utils/snowboy-debug.h"
#include "utils/snowboy-types.h"
#include "utils/snowboy-utils.h"

namespace snowboy {

////////////////////////////////////////////////////////////////////////////////
//
// VectorBase class
//
////////////////////////////////////////////////////////////////////////////////

class VectorBase {
 public:
  bool IsZero(const float cutoff = 1.0e-06) const;

  // Sets all members of a vector to a specified value.
  void Set(const float value);

  // Set vector to all zeros.
  void SetZero();

  // Sets to random values of a normal distribution.
  void SetRandomGaussian();

  // Sets to numbers uniformly distributed on (0, 1).
  void SetRandomUniform();

  // Returns the  dimension of the vector.
  inline MatrixIndexT Dim() const { return dim_; }

  // Returns a pointer to the start of the vector's data.
  inline float* Data() { return data_; }
  inline const float* Data() const { return data_; }

  // Returns the value at given index.
  inline const float operator()(const MatrixIndexT index) const {
    SNOWBOY_ASSERT(index < dim_ && index >= 0);
    return data_[index];
  }
  inline float& operator()(const MatrixIndexT index) {
    SNOWBOY_ASSERT(index < dim_ && index >= 0);
    return data_[index];
  }

  // Returns a sub vector from origin with given length.
  SubVector Range(const MatrixIndexT origin, const MatrixIndexT length);
  const SubVector Range(const MatrixIndexT origin,
                        const MatrixIndexT length) const;

  // Copies data from another vector vec.
  void CopyFromVec(const VectorBase& vec);

  // Stacks the rows in the matrix mat.
  void CopyRowsFromMat(const MatrixBase& mat);

  // Stacks the columns in the matrix mat.
  void CopyColsFromMat(const MatrixBase& mat);

  // Computes the sum of the vector.
  float Sum() const;

  // Adds <value> to every vector element.
  void Add(const float value);

  // Adds vector: *this = *this + alpha * vec
  void AddVec(const float alpha, const VectorBase& vec);

  // Adds vector: *this = *this + alpha * vec^2
  void AddVec2(const float alpha, const VectorBase& vec);

  // Adds the diagonal of a matrix times itself:
  // *this = alpha * diag(M M^T) +  beta * *this (if trans == kNoTrans), or
  // *this = alpha * diag(M^T M) +  beta * *this (if trans == kTrans).
  void AddDiagMat2(const float alpha, const MatrixBase& mat,
                   const MatrixTransposeType trans = kNoTrans,
                   const float beta = 1.0f);

  // Multiplies all elements by <alpha>.
  void Scale(const float alpha);

  // Element-wise multiplication.
  void MulElements(const VectorBase& vec);

  // Dot product of <this, vec>
  float DotVec(const VectorBase& vec) const;

  // Applies floor on each of the vector's elements.
  void ApplyFloor(const float floor);

  // Applies logarithm on each of the vector's elements.
  void ApplyLog();

  // Takes all elements of vector to a power.
  void ApplyPow(const float power);

  // Applies soft-max to vector and return normalizer.
  float ApplySoftmax();

  // this = beta * this + alpha * mat * vec
  void AddMatVec(const float alpha, const MatrixBase& mat,
                 const MatrixTransposeType trans, const VectorBase& vec,
                 const float beta);

  // Computes the p-th norm of the vector.
  float Norm(float p) const;

  // Computes Euclidean distance between <this> and <vec>.
  float EuclideanDistance(const VectorBase& vec) const;

  // Computes Cosine distance between <this> and <vec>.
  // Note: Cosine distance is not a proper distance metric, as it does not have
  //       the triangle inequality property and it violates the coincidence
  //       axiom. We use the following fomula to compute the distance:
  //           distance = (1.0f - similarity) / 2.0f;
  float CosineDistance(const VectorBase& vec) const;

  // Returns the maximum value of all the elements, or -infinity for empty
  // vectors. If <index> is provided, returns the associated index, -1 if vector
  // is empty.
  float Max() const;
  float Max(MatrixIndexT* index) const;

  // Returns the minimum value of all the elements, or infinity for empty
  // vectors. If <index> is provided, returns the associated index, -1 if vector
  // is empty.
  float Min() const;
  float Min(MatrixIndexT* index) const;

  // If <add> is true, then read the Vector from stream, and add it to the
  // current Vector.
  void Read(const bool binary, const bool add, std::istream* is);
  void Read(const bool binary, std::istream* is);

  void Write(const bool binary, std::ostream* os) const;

 protected:
  // Constructor, this version creates an empty vector. We put the constructor
  // as protected so that it is only callable from child classes.
  VectorBase(): dim_(0), data_(NULL) {}

  // Destructor, memory allocation happens in child classes. We put the
  // destructor as protected so that it is only callable from child classes.
  ~VectorBase() { }

  // Vector dimension.
  MatrixIndexT dim_;

  // Data pointer.
  float* data_;

  SNOWBOY_DISALLOW_COPY_AND_ASSIGN(VectorBase);
};

////////////////////////////////////////////////////////////////////////////////
//
// Vector class
//
////////////////////////////////////////////////////////////////////////////////

class Vector: public VectorBase {
 public:
  // Constructor, this version creates an empty vector.
  Vector() : VectorBase() {}

  // Constructor, this version creates a vector with a specific size, and sets
  // initial values to zero by default.
  explicit Vector(const MatrixIndexT size,
                  const MatrixResizeType resize_type = kSetZero) :
      VectorBase() {
    Resize(size, resize_type);
  }

  // Copy constructor, this version copies from Vector.
  explicit Vector(const Vector& vec) : VectorBase() {
    Resize(vec.Dim(), kUndefined);
    CopyFromVec(vec);
  }

  // Copy constructor, this version copies from VectorBase, which is needed to
  // copy from SubVector.
  explicit Vector(const VectorBase& vec) : VectorBase() {
    Resize(vec.Dim(), kUndefined);
    CopyFromVec(vec);
  }

  // Resizes vector to a specified size, works in linear time to the number of
  // data elements.
  void Resize(const MatrixIndexT length,
              const MatrixResizeType resize_type = kSetZero);

  // Swaps the contents of <*this> and <*other>. Shallow swap.
  void Swap(Vector* other);

  // Removes one specific element changes the other elements correspondingly.
  void RemoveElement(const MatrixIndexT index);

  // Assignment operator, one for class Vector and another for VectorBase.
  Vector& operator=(const Vector& other);
  Vector& operator=(const VectorBase& other);

  // Destructor
  ~Vector() { ReleaseVectorMemory(); }

  // If <add> is true, then read the Vector from stream, and add it to the
  // current Vector.
  void Read(const bool binary, const bool add, std::istream* is);
  void Read(const bool binary, std::istream* is);

 private:
  // Allocates memory for <data_>.
  void AllocateVectorMemory(const MatrixIndexT dim);

  void ReleaseVectorMemory();
};

////////////////////////////////////////////////////////////////////////////////
//
// SubVector class
//
////////////////////////////////////////////////////////////////////////////////

class SubVector : public VectorBase {
 public:
  // Constructor, this version creates a SubVector from Vector or SubVector, and
  // it is not const-safe.
  SubVector(const VectorBase& vec,
            const MatrixIndexT origin,
            const MatrixIndexT length);

  // Constructor, this version creates a SubVector from a row of MatrixBase, and
  // it is not const-safe.
  SubVector(const MatrixBase& mat, MatrixIndexT row);

  // Copy constructor, needed for Range() to work in base class.
  SubVector(const SubVector& other);

  ~SubVector() {}

 private:
  SubVector() {}  // Blocks the default constructor.
  SNOWBOY_DISALLOW_ASSIGN(SubVector);
};

////////////////////////////////////////////////////////////////////////////////
//
// Functions
//
////////////////////////////////////////////////////////////////////////////////

bool IsEqual(const float tolerance,
             const VectorBase& vec1, const VectorBase& vec2);

}  // namespace snowboy

#endif  // SNOWBOY_MATRIX_VECTOR_WRAPPER_H_
