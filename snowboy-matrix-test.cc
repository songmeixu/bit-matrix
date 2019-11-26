#include <iostream>
#include <vector>

#include "matrix/matrix-wrapper.h"
#include "matrix/vector-wrapper.h"
#include "utils/snowboy-math.h"

namespace snowboy {

void Print(const VectorBase& vec) {
  for (int i = 0; i < vec.Dim(); ++i) {
    std::cout << vec(i) << " "; 
  }
  std::cout << std::endl;
}

void Print(const MatrixBase& mat) {
  std::cout << std::endl;
  for (int r = 0; r < mat.NumRows(); ++r) {
    for (int c = 0; c < mat.NumCols(); ++c) {
      std::cout << mat(r, c) << " ";
    }
    std::cout << std::endl;
  }
  std::cout << std::endl;
}

bool TestMatrixScale(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 num_rows = static_cast<int32>(100 * RandomUniform());
    int32 num_cols = static_cast<int32>(100 * RandomUniform());
    num_rows = num_rows > 0 ? num_rows : 10;
    num_cols = num_cols > 0 ? num_cols : 10;
    Matrix mat(num_rows, num_cols);
    mat.SetRandomGaussian();

    Matrix mat1(mat);
    Matrix mat2(mat);

    float scale = RandomGaussian();
    mat1.Scale(scale);
    for (int32 r = 0; r < mat2.NumRows(); ++r) {
      for (int32 c = 0; c < mat2.NumCols(); ++c) {
        mat2(r, c) *= scale;
      }
    }

    if (!IsEqual(tolerance, mat1, mat2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestMatrixAddMat(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 num_rows = static_cast<int32>(100 * RandomUniform());
    int32 num_cols = static_cast<int32>(100 * RandomUniform());
    num_rows = num_rows > 0 ? num_rows : 10;
    num_cols = num_cols > 0 ? num_cols : 10;
    Matrix mat(num_rows, num_cols);
    mat.SetRandomGaussian();

    Matrix mat1(mat);
    Matrix mat2(mat);
    Matrix mat3(num_rows, num_cols);
    mat3.SetRandomGaussian();

    float alpha = RandomGaussian();
    mat1.AddMat(alpha, mat3);
    for (int32 r = 0; r < mat2.NumRows(); ++r) {
      for (int32 c = 0; c < mat2.NumCols(); ++c) {
        mat2(r, c) += alpha * mat3(r, c);
      }
    }

    if (!IsEqual(tolerance, mat1, mat2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestMatrixAddMatMat(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 num_rows = static_cast<int32>(100 * RandomUniform());
    int32 num_cols = static_cast<int32>(100 * RandomUniform());
    num_rows = num_rows > 0 ? num_rows : 10;
    num_cols = num_cols > 0 ? num_cols : 10;
    Matrix mat(num_rows, num_cols);
    mat.SetRandomGaussian();

    Matrix mat1(mat);
    Matrix mat2(mat);

    int32 num_connect = static_cast<int32>(100 * RandomUniform());
    num_connect = num_connect > 0 ? num_connect : 10;
    Matrix mat3(num_rows, num_connect);
    Matrix mat4(num_connect, num_cols);
    mat3.SetRandomGaussian();
    mat4.SetRandomGaussian();

    float alpha = RandomGaussian();
    float beta = RandomGaussian();
    mat1.AddMatMat(alpha, mat3, kNoTrans, mat4, kNoTrans, beta);

    Matrix mat5(num_rows, num_cols);
    mat5.Set(0.0f);
    for (int32 r = 0; r < mat5.NumRows(); ++r) {
      for (int32 c = 0; c < mat5.NumCols(); ++c) {
        for (int32 d = 0; d < num_connect; ++d) {
          mat5(r, c) += mat3(r, d) * mat4(d, c);
        }
      }
    }
    mat5.Scale(alpha);
    mat2.Scale(beta);
    mat2.AddMat(1.0f, mat5);

    if (!IsEqual(tolerance, mat1, mat2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestMatrixAddVecVec(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 num_rows = static_cast<int32>(100 * RandomUniform());
    int32 num_cols = static_cast<int32>(100 * RandomUniform());
    num_rows = num_rows > 0 ? num_rows : 10;
    num_cols = num_cols > 0 ? num_cols : 10;
    Matrix mat(num_rows, num_cols);
    mat.SetRandomGaussian();

    Matrix mat1(mat);
    Matrix mat2(mat);

    Vector vec1(num_rows);
    Vector vec2(num_cols);
    vec1.SetRandomGaussian();
    vec2.SetRandomGaussian();

    float alpha = RandomGaussian();
    mat1.AddVecVec(alpha, vec1, vec2);

    Matrix mat3(num_rows, num_cols);
    for (int32 r = 0; r < mat3.NumRows(); ++r) {
      for (int32 c = 0; c < mat3.NumCols(); ++c) {
        mat3(r, c) = vec1(r) * vec2(c);
      }
    }
    mat3.Scale(alpha);
    mat2.AddMat(1.0f, mat3);

    if (!IsEqual(tolerance, mat1, mat2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestVectorScale(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 dim = static_cast<int32>(100 * RandomUniform());
    dim = dim > 0 ? dim : 10;
    Vector vec(dim);
    vec.SetRandomGaussian();

    Vector vec1(vec);
    Vector vec2(vec);

    float scale = RandomGaussian();
    vec1.Scale(scale);
    for (int32 d = 0; d < vec2.Dim(); ++d) {
      vec2(d) *= scale;
    }

    if (!IsEqual(tolerance, vec1, vec2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestVectorAddVec(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 dim = static_cast<int32>(100 * RandomUniform());
    dim = dim > 0 ? dim : 10;
    Vector vec(dim);
    vec.SetRandomGaussian();

    Vector vec1(vec);
    Vector vec2(vec);
    Vector vec3(dim);
    vec3.SetRandomGaussian();

    float alpha = RandomGaussian();
    vec1.AddVec(alpha, vec3);
    for (int32 d = 0; d < vec2.Dim(); ++d) {
      vec2(d) += alpha * vec3(d);
    }

    if (!IsEqual(tolerance, vec1, vec2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestVectorAddDiagMat2(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 dim = static_cast<int32>(100 * RandomUniform());
    dim = dim > 0 ? dim : 10;
    Vector vec(dim);
    vec.SetRandomGaussian();

    Vector vec1(vec);
    Vector vec2(vec);
    int32 num_connect = static_cast<int32>(100 * RandomUniform());
    num_connect = num_connect > 0 ? num_connect : 10;
    Matrix mat1(dim, num_connect);
    mat1.SetRandomGaussian();

    float alpha = RandomGaussian();
    float beta = RandomGaussian();
    vec1.AddDiagMat2(alpha, mat1, kNoTrans, beta);
    for (int32 d = 0; d < vec2.Dim(); ++d) {
      float tmp = 0;
      for (int32 i = 0; i < num_connect; ++i) {
        tmp += mat1(d, i) * mat1(d, i);
      }
      vec2(d) = alpha * tmp + beta * vec2(d);
    }

    if (!IsEqual(tolerance, vec1, vec2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestVectorDotVec(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 dim = static_cast<int32>(100 * RandomUniform());
    dim = dim > 0 ? dim : 10;
    Vector vec(dim);
    vec.SetRandomGaussian();

    Vector vec1(vec);
    Vector vec2(vec);
    Vector vec3(dim);
    vec3.SetRandomGaussian();

    float x = vec1.DotVec(vec3);
    float y = 0;
    for (int32 d = 0; d < vec2.Dim(); ++d) {
      y += vec2(d) * vec3(d);
    }

    if (std::abs(x - y) > tolerance) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestVectorAddMatVec(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 dim = static_cast<int32>(100 * RandomUniform());
    int32 num_connect = static_cast<int32>(100 * RandomUniform());
    dim = dim > 0 ? dim : 10;
    num_connect = num_connect > 0 ? num_connect : 10;
    Vector vec(dim);
    vec.SetRandomGaussian();

    Vector vec1(vec);
    Vector vec2(vec);
    Vector vec3(num_connect);
    vec3.SetRandomGaussian();
    Matrix mat1(dim, num_connect);
    mat1.SetRandomGaussian();

    float alpha = RandomGaussian();
    float beta = RandomGaussian();
    vec1.AddMatVec(alpha, mat1, kNoTrans, vec3, beta);
    for (int32 d = 0; d < vec2.Dim(); ++d) {
      float tmp = 0;
      for (int32 i = 0; i < num_connect; ++i) {
        tmp += mat1(d, i) * vec3(i);
      }
      vec2(d) = alpha * tmp + beta * vec2(d);
    }

    if (!IsEqual(tolerance, vec1, vec2)) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

bool TestVectorNorm(const float tolerance) {
  for (int32 i = 0; i < 10; ++i) {
    int32 dim = static_cast<int32>(100 * RandomUniform());
    dim = dim > 0 ? dim : 10;
    Vector vec(dim);
    vec.SetRandomGaussian();

    Vector vec1(vec);
    Vector vec2(vec);

    float x = vec1.Norm(2.0f);
    float y = 0;
    for (int32 d = 0; d < vec2.Dim(); ++d) {
      y += vec2(d) * vec2(d);
    }
    y = std::sqrt(y);

    if (std::abs(x - y) > tolerance) {
      std::cerr << __func__ << " test failed." << std::endl;
      return false;
    }
  }
  return true;
}

}

int main() {
  float tolerance = 0.01f;
  bool success = true;

  // Tests Matrix library.
  std::cout << "Testing Matrix library..." << std::endl;
  success = snowboy::TestMatrixScale(tolerance) && success;
  success = snowboy::TestMatrixAddMat(tolerance) && success;
  success = snowboy::TestMatrixAddMatMat(tolerance) && success;
  success = snowboy::TestMatrixAddVecVec(tolerance) && success;

  // Tests Vector library.
  std::cout << std::endl;
  std::cout << "Testing Vector library..." << std::endl;
  success = snowboy::TestVectorScale(tolerance) && success;
  success = snowboy::TestVectorDotVec(tolerance) && success;
  success = snowboy::TestVectorAddVec(tolerance) && success;
  success = snowboy::TestVectorAddDiagMat2(tolerance) && success;
  success = snowboy::TestVectorAddMatVec(tolerance) && success;
  success = snowboy::TestVectorNorm(tolerance) && success;

  std::cout << std::endl;
  if (success) {
    std::cout << "All tests passed!" << std::endl;
  } else {
    SNOWBOY_ERROR << "Some of the tests failed, see the above info!";
  }
}
