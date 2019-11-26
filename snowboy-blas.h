// matrix/snowboy-blas.h

// Copyright 2016  KITT.AI (author: Guoguo Chen)

#ifndef SNOWBOY_MATRIX_SNOWBOY_BLAS_H_
#define SNOWBOY_MATRIX_SNOWBOY_BLAS_H_

#ifdef HAVE_ATLAS
  extern "C" {
    #include <cblas.h>
    #include <clapack.h>
  }
#elif defined(HAVE_CLAPACK)
  #ifdef __APPLE__
    #ifndef __has_extension
    #define __has_extension(x) 0
    #endif
    #define vImage_Utilities_h
    #define vImage_CVUtilities_h
    #include <Accelerate/Accelerate.h>
    typedef __CLPK_integer          integer;
    typedef __CLPK_logical          logical;
//    typedef __CLPK_real             real;
    typedef __CLPK_doublereal       doublereal;
    typedef __CLPK_complex          complex;
    typedef __CLPK_doublecomplex    doublecomplex;
    typedef __CLPK_ftnlen           ftnlen;
  #else
    extern "C" {
      #include <cblas.h>
      #include <f2c.h>
      #include <clapack.h>  

      // Removes dangerous macros from f2c.h.
      #undef abs
      #undef dabs
      #undef min
      #undef max
      #undef dmin
      #undef dmax
      #undef bit_test
      #undef bit_clear
      #undef bit_set
    }
  #endif
  // Defines SnowboyBlasInt type that will be used in SVD.
  typedef integer SnowboyBlasInt;
#elif defined(HAVE_OPENBLAS)
  #include "cblas.h"
#ifndef NO_FORTRAN
  #include "lapacke.h"
#endif
  #undef I
  #undef complex
  // get rid of macros from f2c.h -- these are dangerous.
  #undef abs
  #undef dabs
  #undef min
  #undef max
  #undef dmin
  #undef dmax
  #undef bit_test
  #undef bit_clear
  #undef bit_set
#else
  #error "You have to define HAVE_CLAPACK or HAVE_ATLAS or HAVE_OPENBLAS."
#endif

#endif  // SNOWBOY_MATRIX_SNOWBOY_BLAS_H_
