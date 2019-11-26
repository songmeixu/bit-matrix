// Copyright 2017  Baidu (author: Meixu Song)

#ifndef SNOWBOY_BIT_KERNEL_H
#define SNOWBOY_BIT_KERNEL_H

#include "matrix/matrix-common.h"
#include "utils/snowboy-debug.h"
#include "utils/snowboy-types.h"
#include "utils/snowboy-utils.h"

namespace snowboy {

// for x is a 8-bits vec, y is a 1-bit vec, this give the inner dot
int32 bit_kernel_for_uint64_8_1(uint64 x, uint64 y);

}

#endif //SNOWBOY_BIT_KERNEL_H
