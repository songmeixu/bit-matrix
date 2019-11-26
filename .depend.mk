bit-kernel.o: bit-kernel.cc ../matrix/bit-kernel.h
bit-matrix.o: bit-matrix.cc \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cmath \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__config \
  /usr/include/math.h /usr/include/sys/cdefs.h \
  /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h /usr/include/Availability.h \
  /usr/include/AvailabilityInternal.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/type_traits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstddef \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stddef.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__stddef_max_align_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstring \
  /usr/include/string.h /usr/include/_types.h /usr/include/sys/_types.h \
  /usr/include/machine/_types.h /usr/include/i386/_types.h \
  /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/sys/_types/_size_t.h /usr/include/sys/_types/_null.h \
  /usr/include/sys/_types/_ssize_t.h /usr/include/strings.h \
  ../matrix/bit-matrix.h ../matrix/matrix-common.h \
  ../matrix/snowboy-blas.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/Accelerate.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/../Frameworks/vecLib.framework/Headers/vecLib.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vecLibTypes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mm_malloc.h \
  /usr/include/stdlib.h /usr/include/sys/wait.h \
  /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h \
  /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h \
  /usr/include/machine/signal.h /usr/include/i386/signal.h \
  /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h \
  /usr/include/mach/i386/_structs.h \
  /usr/include/sys/_pthread/_pthread_attr_t.h \
  /usr/include/sys/_types/_sigaltstack.h \
  /usr/include/sys/_types/_ucontext.h \
  /usr/include/sys/_types/_sigset_t.h /usr/include/sys/_types/_uid_t.h \
  /usr/include/sys/resource.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h \
  /usr/include/sys/_types/_int16_t.h /usr/include/sys/_types/_int32_t.h \
  /usr/include/sys/_types/_int64_t.h /usr/include/_types/_uint8_t.h \
  /usr/include/_types/_uint16_t.h /usr/include/_types/_uint32_t.h \
  /usr/include/_types/_uint64_t.h /usr/include/sys/_types/_intptr_t.h \
  /usr/include/sys/_types/_uintptr_t.h /usr/include/_types/_intmax_t.h \
  /usr/include/_types/_uintmax_t.h /usr/include/sys/_types/_timeval.h \
  /usr/include/machine/endian.h /usr/include/i386/endian.h \
  /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h \
  /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h \
  /usr/include/sys/_types/_ct_rune_t.h /usr/include/sys/_types/_rune_t.h \
  /usr/include/sys/_types/_wchar_t.h /usr/include/machine/types.h \
  /usr/include/i386/types.h /usr/include/sys/_types/_u_int8_t.h \
  /usr/include/sys/_types/_u_int16_t.h \
  /usr/include/sys/_types/_u_int32_t.h \
  /usr/include/sys/_types/_u_int64_t.h /usr/include/sys/_types/_dev_t.h \
  /usr/include/sys/_types/_mode_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/emmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/f16cintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBasicOps.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/immintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/tmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/smmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/wmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_aes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_pclmul.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/clflushoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avxintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmi2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/lzcntintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512fintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512bwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512cdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512dqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlbwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlcdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vldqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512erintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmavlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmivlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512pfintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pkuintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/rtmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xtestintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/shaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fxsrintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavecintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavesintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/adxintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBigNum.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vectorOps.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vfp.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vDSP.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdbool.h \
  /System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h \
  /usr/include/TargetConditionals.h /usr/include/os/availability.h \
  /usr/include/AvailabilityMacros.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/cblas.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/clapack.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/LinearAlgebra.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/base.h \
  /usr/include/os/object.h /usr/include/os/base.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/object.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/matrix.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/vector.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/splat.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/arithmetic.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/linear_systems.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/norms.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Sparse.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Types.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/BLAS.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Quadrature.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Integration.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/BNNS/bnns.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vForce.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ciso646 \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/complex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/stdexcept \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/exception \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iosfwd \
  /usr/include/wchar.h /usr/include/sys/_types/_mbstate_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdarg.h \
  /usr/include/stdio.h /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/stdio.h /usr/include/sys/_types/_off_t.h \
  /usr/include/time.h /usr/include/sys/_types/_clock_t.h \
  /usr/include/sys/_types/_time_t.h /usr/include/sys/_types/_timespec.h \
  /usr/include/_wctype.h /usr/include/sys/_types/_wint_t.h \
  /usr/include/_types/_wctype_t.h /usr/include/ctype.h \
  /usr/include/runetype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/sstream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ostream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ios \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/string \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwchar \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwctype \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cctype \
  /usr/include/wctype.h /usr/include/_types/_wctrans_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/algorithm \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/initializer_list \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/utility \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/memory \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/typeinfo \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdint \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/new \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef___deallocate \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/limits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef_min_max \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iterator \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__functional_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__debug \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/atomic \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/mutex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__mutex_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/chrono \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ctime \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ratio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/climits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/limits.h \
  /usr/include/limits.h /usr/include/machine/limits.h \
  /usr/include/i386/limits.h /usr/include/i386/_limits.h \
  /usr/include/sys/syslimits.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/system_error \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cerrno \
  /usr/include/errno.h /usr/include/sys/errno.h /usr/include/pthread.h \
  /usr/include/pthread/pthread_impl.h /usr/include/pthread/sched.h \
  /usr/include/sys/_pthread/_pthread_cond_t.h \
  /usr/include/sys/_pthread/_pthread_condattr_t.h \
  /usr/include/sys/_pthread/_pthread_key_t.h \
  /usr/include/sys/_pthread/_pthread_mutex_t.h \
  /usr/include/sys/_pthread/_pthread_mutexattr_t.h \
  /usr/include/sys/_pthread/_pthread_once_t.h \
  /usr/include/sys/_pthread/_pthread_rwlock_t.h \
  /usr/include/sys/_pthread/_pthread_rwlockattr_t.h \
  /usr/include/sys/_pthread/_pthread_t.h /usr/include/pthread/qos.h \
  /usr/include/sys/qos.h /usr/include/sys/_types/_mach_port_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/functional \
  /usr/include/locale.h /usr/include/_locale.h /usr/include/xlocale.h \
  /usr/include/_xlocale.h /usr/include/xlocale/_ctype.h \
  /usr/include/xlocale/__wctype.h /usr/include/xlocale/_stdio.h \
  /usr/include/xlocale/_stdlib.h /usr/include/xlocale/_string.h \
  /usr/include/xlocale/_time.h /usr/include/xlocale/_wchar.h \
  /usr/include/xlocale/_wctype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/streambuf \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdlib \
  /usr/include/nl_types.h /usr/include/sys/types.h \
  /usr/include/sys/_types/_blkcnt_t.h \
  /usr/include/sys/_types/_blksize_t.h /usr/include/sys/_types/_gid_t.h \
  /usr/include/sys/_types/_in_addr_t.h \
  /usr/include/sys/_types/_in_port_t.h /usr/include/sys/_types/_ino_t.h \
  /usr/include/sys/_types/_ino64_t.h /usr/include/sys/_types/_key_t.h \
  /usr/include/sys/_types/_nlink_t.h \
  /usr/include/sys/_types/_useconds_t.h \
  /usr/include/sys/_types/_suseconds_t.h \
  /usr/include/sys/_types/_rsize_t.h /usr/include/sys/_types/_errno_t.h \
  /usr/include/sys/_types/_fd_def.h \
  /usr/include/sys/_types/_fd_setsize.h \
  /usr/include/sys/_types/_fd_set.h /usr/include/sys/_types/_fd_clr.h \
  /usr/include/sys/_types/_fd_zero.h /usr/include/sys/_types/_fd_isset.h \
  /usr/include/sys/_types/_fd_copy.h \
  /usr/include/sys/_types/_fsblkcnt_t.h \
  /usr/include/sys/_types/_fsfilcnt_t.h /usr/include/_types/_nl_item.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/bitset \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__bit_reference \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/istream \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Types.h \
  /usr/include/unistd.h /usr/include/sys/unistd.h \
  /usr/include/sys/_types/_posix_vdisable.h \
  /usr/include/sys/_types/_seek_set.h /usr/include/sys/select.h \
  /usr/include/sys/_select.h /usr/include/sys/_types/_uuid_t.h \
  /usr/include/gethostuuid.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Alpha.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Convolution.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Conversion.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Geometry.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Histogram.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Morphology.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/BasicImageTypes.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Transform.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Utilities.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_CVUtilities.h \
  ../matrix/bit-vector.h ../utils/snowboy-debug.h \
  ../utils/snowboy-types.h ../utils/snowboy-utils.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/vector \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__split_buffer \
  ../utils/snowboy-utils-inl.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_map \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__hash_table \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_set \
  ../matrix/bit-kernel.h ../matrix/matrix-wrapper.h \
  ../matrix/vector-wrapper.h ../utils/snowboy-io.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/fstream \
  ../utils/snowboy-io-inl.h ../utils/snowboy-math.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/random \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/numeric
bit-vector.o: bit-vector.cc \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/algorithm \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__config \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/initializer_list \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstddef \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stddef.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__stddef_max_align_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/type_traits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstring \
  /usr/include/string.h /usr/include/_types.h /usr/include/sys/_types.h \
  /usr/include/sys/cdefs.h /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h /usr/include/machine/_types.h \
  /usr/include/i386/_types.h /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/Availability.h /usr/include/AvailabilityInternal.h \
  /usr/include/sys/_types/_size_t.h /usr/include/sys/_types/_null.h \
  /usr/include/sys/_types/_ssize_t.h /usr/include/strings.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/utility \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/memory \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/typeinfo \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/exception \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdint \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h \
  /usr/include/sys/_types/_int16_t.h /usr/include/sys/_types/_int32_t.h \
  /usr/include/sys/_types/_int64_t.h /usr/include/_types/_uint8_t.h \
  /usr/include/_types/_uint16_t.h /usr/include/_types/_uint32_t.h \
  /usr/include/_types/_uint64_t.h /usr/include/sys/_types/_intptr_t.h \
  /usr/include/sys/_types/_uintptr_t.h /usr/include/_types/_intmax_t.h \
  /usr/include/_types/_uintmax_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/new \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef___deallocate \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/limits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef_min_max \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iterator \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iosfwd \
  /usr/include/wchar.h /usr/include/sys/_types/_mbstate_t.h \
  /usr/include/sys/_types/_ct_rune_t.h /usr/include/sys/_types/_rune_t.h \
  /usr/include/sys/_types/_wchar_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdarg.h \
  /usr/include/stdio.h /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/stdio.h /usr/include/sys/_types/_off_t.h \
  /usr/include/time.h /usr/include/sys/_types/_clock_t.h \
  /usr/include/sys/_types/_time_t.h /usr/include/sys/_types/_timespec.h \
  /usr/include/_wctype.h /usr/include/sys/_types/_wint_t.h \
  /usr/include/_types/_wctype_t.h /usr/include/ctype.h \
  /usr/include/runetype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__functional_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__debug \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/atomic \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cmath \
  /usr/include/math.h ../matrix/bit-matrix.h ../matrix/matrix-common.h \
  ../matrix/snowboy-blas.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/Accelerate.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/../Frameworks/vecLib.framework/Headers/vecLib.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vecLibTypes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mm_malloc.h \
  /usr/include/stdlib.h /usr/include/sys/wait.h \
  /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h \
  /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h \
  /usr/include/machine/signal.h /usr/include/i386/signal.h \
  /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h \
  /usr/include/mach/i386/_structs.h \
  /usr/include/sys/_pthread/_pthread_attr_t.h \
  /usr/include/sys/_types/_sigaltstack.h \
  /usr/include/sys/_types/_ucontext.h \
  /usr/include/sys/_types/_sigset_t.h /usr/include/sys/_types/_uid_t.h \
  /usr/include/sys/resource.h /usr/include/sys/_types/_timeval.h \
  /usr/include/machine/endian.h /usr/include/i386/endian.h \
  /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h \
  /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h \
  /usr/include/machine/types.h /usr/include/i386/types.h \
  /usr/include/sys/_types/_u_int8_t.h \
  /usr/include/sys/_types/_u_int16_t.h \
  /usr/include/sys/_types/_u_int32_t.h \
  /usr/include/sys/_types/_u_int64_t.h /usr/include/sys/_types/_dev_t.h \
  /usr/include/sys/_types/_mode_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/emmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/f16cintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBasicOps.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/immintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/tmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/smmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/wmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_aes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_pclmul.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/clflushoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avxintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmi2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/lzcntintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512fintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512bwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512cdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512dqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlbwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlcdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vldqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512erintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmavlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmivlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512pfintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pkuintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/rtmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xtestintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/shaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fxsrintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavecintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavesintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/adxintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBigNum.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vectorOps.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vfp.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vDSP.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdbool.h \
  /System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h \
  /usr/include/TargetConditionals.h /usr/include/os/availability.h \
  /usr/include/AvailabilityMacros.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/cblas.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/clapack.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/LinearAlgebra.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/base.h \
  /usr/include/os/object.h /usr/include/os/base.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/object.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/matrix.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/vector.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/splat.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/arithmetic.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/linear_systems.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/norms.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Sparse.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Types.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/BLAS.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Quadrature.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Integration.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/BNNS/bnns.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vForce.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ciso646 \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/complex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/stdexcept \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/sstream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ostream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ios \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/string \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwchar \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwctype \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cctype \
  /usr/include/wctype.h /usr/include/_types/_wctrans_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/mutex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__mutex_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/chrono \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ctime \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ratio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/climits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/limits.h \
  /usr/include/limits.h /usr/include/machine/limits.h \
  /usr/include/i386/limits.h /usr/include/i386/_limits.h \
  /usr/include/sys/syslimits.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/system_error \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cerrno \
  /usr/include/errno.h /usr/include/sys/errno.h /usr/include/pthread.h \
  /usr/include/pthread/pthread_impl.h /usr/include/pthread/sched.h \
  /usr/include/sys/_pthread/_pthread_cond_t.h \
  /usr/include/sys/_pthread/_pthread_condattr_t.h \
  /usr/include/sys/_pthread/_pthread_key_t.h \
  /usr/include/sys/_pthread/_pthread_mutex_t.h \
  /usr/include/sys/_pthread/_pthread_mutexattr_t.h \
  /usr/include/sys/_pthread/_pthread_once_t.h \
  /usr/include/sys/_pthread/_pthread_rwlock_t.h \
  /usr/include/sys/_pthread/_pthread_rwlockattr_t.h \
  /usr/include/sys/_pthread/_pthread_t.h /usr/include/pthread/qos.h \
  /usr/include/sys/qos.h /usr/include/sys/_types/_mach_port_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/functional \
  /usr/include/locale.h /usr/include/_locale.h /usr/include/xlocale.h \
  /usr/include/_xlocale.h /usr/include/xlocale/_ctype.h \
  /usr/include/xlocale/__wctype.h /usr/include/xlocale/_stdio.h \
  /usr/include/xlocale/_stdlib.h /usr/include/xlocale/_string.h \
  /usr/include/xlocale/_time.h /usr/include/xlocale/_wchar.h \
  /usr/include/xlocale/_wctype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/streambuf \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdlib \
  /usr/include/nl_types.h /usr/include/sys/types.h \
  /usr/include/sys/_types/_blkcnt_t.h \
  /usr/include/sys/_types/_blksize_t.h /usr/include/sys/_types/_gid_t.h \
  /usr/include/sys/_types/_in_addr_t.h \
  /usr/include/sys/_types/_in_port_t.h /usr/include/sys/_types/_ino_t.h \
  /usr/include/sys/_types/_ino64_t.h /usr/include/sys/_types/_key_t.h \
  /usr/include/sys/_types/_nlink_t.h \
  /usr/include/sys/_types/_useconds_t.h \
  /usr/include/sys/_types/_suseconds_t.h \
  /usr/include/sys/_types/_rsize_t.h /usr/include/sys/_types/_errno_t.h \
  /usr/include/sys/_types/_fd_def.h \
  /usr/include/sys/_types/_fd_setsize.h \
  /usr/include/sys/_types/_fd_set.h /usr/include/sys/_types/_fd_clr.h \
  /usr/include/sys/_types/_fd_zero.h /usr/include/sys/_types/_fd_isset.h \
  /usr/include/sys/_types/_fd_copy.h \
  /usr/include/sys/_types/_fsblkcnt_t.h \
  /usr/include/sys/_types/_fsfilcnt_t.h /usr/include/_types/_nl_item.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/bitset \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__bit_reference \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/istream \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Types.h \
  /usr/include/unistd.h /usr/include/sys/unistd.h \
  /usr/include/sys/_types/_posix_vdisable.h \
  /usr/include/sys/_types/_seek_set.h /usr/include/sys/select.h \
  /usr/include/sys/_select.h /usr/include/sys/_types/_uuid_t.h \
  /usr/include/gethostuuid.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Alpha.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Convolution.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Conversion.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Geometry.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Histogram.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Morphology.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/BasicImageTypes.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Transform.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Utilities.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_CVUtilities.h \
  ../matrix/bit-vector.h ../utils/snowboy-debug.h \
  ../utils/snowboy-types.h ../utils/snowboy-utils.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/vector \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__split_buffer \
  ../utils/snowboy-utils-inl.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_map \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__hash_table \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_set \
  ../matrix/bit-kernel.h ../matrix/matrix-wrapper.h \
  ../matrix/vector-wrapper.h ../utils/snowboy-io.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/fstream \
  ../utils/snowboy-io-inl.h ../utils/snowboy-math.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/random \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/numeric
matrix-wrapper.o: matrix-wrapper.cc \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cmath \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__config \
  /usr/include/math.h /usr/include/sys/cdefs.h \
  /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h /usr/include/Availability.h \
  /usr/include/AvailabilityInternal.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/type_traits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstddef \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stddef.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__stddef_max_align_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstring \
  /usr/include/string.h /usr/include/_types.h /usr/include/sys/_types.h \
  /usr/include/machine/_types.h /usr/include/i386/_types.h \
  /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/sys/_types/_size_t.h /usr/include/sys/_types/_null.h \
  /usr/include/sys/_types/_ssize_t.h /usr/include/strings.h \
  ../matrix/matrix-wrapper.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/vector \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iosfwd \
  /usr/include/wchar.h /usr/include/sys/_types/_mbstate_t.h \
  /usr/include/sys/_types/_ct_rune_t.h /usr/include/sys/_types/_rune_t.h \
  /usr/include/sys/_types/_wchar_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdarg.h \
  /usr/include/stdio.h /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/stdio.h /usr/include/sys/_types/_off_t.h \
  /usr/include/time.h /usr/include/sys/_types/_clock_t.h \
  /usr/include/sys/_types/_time_t.h /usr/include/sys/_types/_timespec.h \
  /usr/include/_wctype.h /usr/include/sys/_types/_wint_t.h \
  /usr/include/_types/_wctype_t.h /usr/include/ctype.h \
  /usr/include/runetype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__bit_reference \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/algorithm \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/initializer_list \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/utility \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/memory \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/typeinfo \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/exception \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdint \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h \
  /usr/include/sys/_types/_int16_t.h /usr/include/sys/_types/_int32_t.h \
  /usr/include/sys/_types/_int64_t.h /usr/include/_types/_uint8_t.h \
  /usr/include/_types/_uint16_t.h /usr/include/_types/_uint32_t.h \
  /usr/include/_types/_uint64_t.h /usr/include/sys/_types/_intptr_t.h \
  /usr/include/sys/_types/_uintptr_t.h /usr/include/_types/_intmax_t.h \
  /usr/include/_types/_uintmax_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/new \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef___deallocate \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/limits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef_min_max \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iterator \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__functional_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__debug \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/atomic \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/climits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/limits.h \
  /usr/include/limits.h /usr/include/machine/limits.h \
  /usr/include/i386/limits.h /usr/include/i386/_limits.h \
  /usr/include/sys/syslimits.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/stdexcept \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__split_buffer \
  ../matrix/matrix-common.h ../matrix/snowboy-blas.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/Accelerate.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/../Frameworks/vecLib.framework/Headers/vecLib.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vecLibTypes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mm_malloc.h \
  /usr/include/stdlib.h /usr/include/sys/wait.h \
  /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h \
  /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h \
  /usr/include/machine/signal.h /usr/include/i386/signal.h \
  /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h \
  /usr/include/mach/i386/_structs.h \
  /usr/include/sys/_pthread/_pthread_attr_t.h \
  /usr/include/sys/_types/_sigaltstack.h \
  /usr/include/sys/_types/_ucontext.h \
  /usr/include/sys/_types/_sigset_t.h /usr/include/sys/_types/_uid_t.h \
  /usr/include/sys/resource.h /usr/include/sys/_types/_timeval.h \
  /usr/include/machine/endian.h /usr/include/i386/endian.h \
  /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h \
  /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h \
  /usr/include/machine/types.h /usr/include/i386/types.h \
  /usr/include/sys/_types/_u_int8_t.h \
  /usr/include/sys/_types/_u_int16_t.h \
  /usr/include/sys/_types/_u_int32_t.h \
  /usr/include/sys/_types/_u_int64_t.h /usr/include/sys/_types/_dev_t.h \
  /usr/include/sys/_types/_mode_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/emmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/f16cintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBasicOps.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/immintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/tmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/smmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/wmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_aes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_pclmul.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/clflushoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avxintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmi2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/lzcntintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512fintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512bwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512cdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512dqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlbwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlcdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vldqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512erintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmavlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmivlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512pfintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pkuintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/rtmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xtestintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/shaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fxsrintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavecintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavesintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/adxintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBigNum.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vectorOps.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vfp.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vDSP.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdbool.h \
  /System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h \
  /usr/include/TargetConditionals.h /usr/include/os/availability.h \
  /usr/include/AvailabilityMacros.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/cblas.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/clapack.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/LinearAlgebra.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/base.h \
  /usr/include/os/object.h /usr/include/os/base.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/object.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/matrix.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/vector.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/splat.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/arithmetic.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/linear_systems.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/norms.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Sparse.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Types.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/BLAS.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Quadrature.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Integration.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/BNNS/bnns.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vForce.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ciso646 \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/complex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/sstream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ostream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ios \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/string \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwchar \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwctype \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cctype \
  /usr/include/wctype.h /usr/include/_types/_wctrans_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/mutex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__mutex_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/chrono \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ctime \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ratio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/system_error \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cerrno \
  /usr/include/errno.h /usr/include/sys/errno.h /usr/include/pthread.h \
  /usr/include/pthread/pthread_impl.h /usr/include/pthread/sched.h \
  /usr/include/sys/_pthread/_pthread_cond_t.h \
  /usr/include/sys/_pthread/_pthread_condattr_t.h \
  /usr/include/sys/_pthread/_pthread_key_t.h \
  /usr/include/sys/_pthread/_pthread_mutex_t.h \
  /usr/include/sys/_pthread/_pthread_mutexattr_t.h \
  /usr/include/sys/_pthread/_pthread_once_t.h \
  /usr/include/sys/_pthread/_pthread_rwlock_t.h \
  /usr/include/sys/_pthread/_pthread_rwlockattr_t.h \
  /usr/include/sys/_pthread/_pthread_t.h /usr/include/pthread/qos.h \
  /usr/include/sys/qos.h /usr/include/sys/_types/_mach_port_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/functional \
  /usr/include/locale.h /usr/include/_locale.h /usr/include/xlocale.h \
  /usr/include/_xlocale.h /usr/include/xlocale/_ctype.h \
  /usr/include/xlocale/__wctype.h /usr/include/xlocale/_stdio.h \
  /usr/include/xlocale/_stdlib.h /usr/include/xlocale/_string.h \
  /usr/include/xlocale/_time.h /usr/include/xlocale/_wchar.h \
  /usr/include/xlocale/_wctype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/streambuf \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdlib \
  /usr/include/nl_types.h /usr/include/sys/types.h \
  /usr/include/sys/_types/_blkcnt_t.h \
  /usr/include/sys/_types/_blksize_t.h /usr/include/sys/_types/_gid_t.h \
  /usr/include/sys/_types/_in_addr_t.h \
  /usr/include/sys/_types/_in_port_t.h /usr/include/sys/_types/_ino_t.h \
  /usr/include/sys/_types/_ino64_t.h /usr/include/sys/_types/_key_t.h \
  /usr/include/sys/_types/_nlink_t.h \
  /usr/include/sys/_types/_useconds_t.h \
  /usr/include/sys/_types/_suseconds_t.h \
  /usr/include/sys/_types/_rsize_t.h /usr/include/sys/_types/_errno_t.h \
  /usr/include/sys/_types/_fd_def.h \
  /usr/include/sys/_types/_fd_setsize.h \
  /usr/include/sys/_types/_fd_set.h /usr/include/sys/_types/_fd_clr.h \
  /usr/include/sys/_types/_fd_zero.h /usr/include/sys/_types/_fd_isset.h \
  /usr/include/sys/_types/_fd_copy.h \
  /usr/include/sys/_types/_fsblkcnt_t.h \
  /usr/include/sys/_types/_fsfilcnt_t.h /usr/include/_types/_nl_item.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/bitset \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/istream \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Types.h \
  /usr/include/unistd.h /usr/include/sys/unistd.h \
  /usr/include/sys/_types/_posix_vdisable.h \
  /usr/include/sys/_types/_seek_set.h /usr/include/sys/select.h \
  /usr/include/sys/_select.h /usr/include/sys/_types/_uuid_t.h \
  /usr/include/gethostuuid.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Alpha.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Convolution.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Conversion.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Geometry.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Histogram.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Morphology.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/BasicImageTypes.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Transform.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Utilities.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_CVUtilities.h \
  ../matrix/vector-wrapper.h ../utils/snowboy-debug.h \
  ../utils/snowboy-types.h ../utils/snowboy-utils.h \
  ../utils/snowboy-utils-inl.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_map \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__hash_table \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_set \
  ../utils/snowboy-io.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/fstream \
  ../utils/snowboy-io-inl.h ../utils/snowboy-math.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/random \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/numeric
snowboy-matrix-test.o: snowboy-matrix-test.cc \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iostream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__config \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ios \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iosfwd \
  /usr/include/wchar.h /usr/include/_types.h /usr/include/sys/_types.h \
  /usr/include/sys/cdefs.h /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h /usr/include/machine/_types.h \
  /usr/include/i386/_types.h /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/Availability.h /usr/include/AvailabilityInternal.h \
  /usr/include/sys/_types/_null.h /usr/include/sys/_types/_size_t.h \
  /usr/include/sys/_types/_mbstate_t.h \
  /usr/include/sys/_types/_ct_rune_t.h /usr/include/sys/_types/_rune_t.h \
  /usr/include/sys/_types/_wchar_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdarg.h \
  /usr/include/stdio.h /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/stdio.h /usr/include/sys/_types/_off_t.h \
  /usr/include/sys/_types/_ssize_t.h /usr/include/time.h \
  /usr/include/sys/_types/_clock_t.h /usr/include/sys/_types/_time_t.h \
  /usr/include/sys/_types/_timespec.h /usr/include/_wctype.h \
  /usr/include/sys/_types/_wint_t.h /usr/include/_types/_wctype_t.h \
  /usr/include/ctype.h /usr/include/runetype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/string \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstring \
  /usr/include/string.h /usr/include/strings.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwchar \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwctype \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cctype \
  /usr/include/wctype.h /usr/include/_types/_wctrans_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/algorithm \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/initializer_list \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstddef \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stddef.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__stddef_max_align_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/type_traits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/utility \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/memory \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/typeinfo \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/exception \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdint \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h \
  /usr/include/sys/_types/_int16_t.h /usr/include/sys/_types/_int32_t.h \
  /usr/include/sys/_types/_int64_t.h /usr/include/_types/_uint8_t.h \
  /usr/include/_types/_uint16_t.h /usr/include/_types/_uint32_t.h \
  /usr/include/_types/_uint64_t.h /usr/include/sys/_types/_intptr_t.h \
  /usr/include/sys/_types/_uintptr_t.h /usr/include/_types/_intmax_t.h \
  /usr/include/_types/_uintmax_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/new \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef___deallocate \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/limits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef_min_max \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iterator \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__functional_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__debug \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/atomic \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/stdexcept \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/mutex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__mutex_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/chrono \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ctime \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ratio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/climits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/limits.h \
  /usr/include/limits.h /usr/include/machine/limits.h \
  /usr/include/i386/limits.h /usr/include/i386/_limits.h \
  /usr/include/sys/syslimits.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/system_error \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cerrno \
  /usr/include/errno.h /usr/include/sys/errno.h /usr/include/pthread.h \
  /usr/include/pthread/pthread_impl.h /usr/include/pthread/sched.h \
  /usr/include/sys/_pthread/_pthread_attr_t.h \
  /usr/include/sys/_pthread/_pthread_cond_t.h \
  /usr/include/sys/_pthread/_pthread_condattr_t.h \
  /usr/include/sys/_pthread/_pthread_key_t.h \
  /usr/include/sys/_pthread/_pthread_mutex_t.h \
  /usr/include/sys/_pthread/_pthread_mutexattr_t.h \
  /usr/include/sys/_pthread/_pthread_once_t.h \
  /usr/include/sys/_pthread/_pthread_rwlock_t.h \
  /usr/include/sys/_pthread/_pthread_rwlockattr_t.h \
  /usr/include/sys/_pthread/_pthread_t.h /usr/include/pthread/qos.h \
  /usr/include/sys/qos.h /usr/include/sys/_types/_mach_port_t.h \
  /usr/include/sys/_types/_sigset_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/functional \
  /usr/include/locale.h /usr/include/_locale.h /usr/include/xlocale.h \
  /usr/include/_xlocale.h /usr/include/xlocale/_ctype.h \
  /usr/include/xlocale/__wctype.h /usr/include/xlocale/_stdio.h \
  /usr/include/xlocale/_string.h /usr/include/xlocale/_time.h \
  /usr/include/xlocale/_wchar.h /usr/include/xlocale/_wctype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/streambuf \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/istream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ostream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdlib \
  /usr/include/stdlib.h /usr/include/sys/wait.h \
  /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h \
  /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h \
  /usr/include/machine/signal.h /usr/include/i386/signal.h \
  /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h \
  /usr/include/mach/i386/_structs.h \
  /usr/include/sys/_types/_sigaltstack.h \
  /usr/include/sys/_types/_ucontext.h /usr/include/sys/_types/_uid_t.h \
  /usr/include/sys/resource.h /usr/include/sys/_types/_timeval.h \
  /usr/include/machine/endian.h /usr/include/i386/endian.h \
  /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h \
  /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h \
  /usr/include/machine/types.h /usr/include/i386/types.h \
  /usr/include/sys/_types/_u_int8_t.h \
  /usr/include/sys/_types/_u_int16_t.h \
  /usr/include/sys/_types/_u_int32_t.h \
  /usr/include/sys/_types/_u_int64_t.h /usr/include/sys/_types/_dev_t.h \
  /usr/include/sys/_types/_mode_t.h /usr/include/xlocale/_stdlib.h \
  /usr/include/nl_types.h /usr/include/sys/types.h \
  /usr/include/sys/_types/_blkcnt_t.h \
  /usr/include/sys/_types/_blksize_t.h /usr/include/sys/_types/_gid_t.h \
  /usr/include/sys/_types/_in_addr_t.h \
  /usr/include/sys/_types/_in_port_t.h /usr/include/sys/_types/_ino_t.h \
  /usr/include/sys/_types/_ino64_t.h /usr/include/sys/_types/_key_t.h \
  /usr/include/sys/_types/_nlink_t.h \
  /usr/include/sys/_types/_useconds_t.h \
  /usr/include/sys/_types/_suseconds_t.h \
  /usr/include/sys/_types/_rsize_t.h /usr/include/sys/_types/_errno_t.h \
  /usr/include/sys/_types/_fd_def.h \
  /usr/include/sys/_types/_fd_setsize.h \
  /usr/include/sys/_types/_fd_set.h /usr/include/sys/_types/_fd_clr.h \
  /usr/include/sys/_types/_fd_zero.h /usr/include/sys/_types/_fd_isset.h \
  /usr/include/sys/_types/_fd_copy.h \
  /usr/include/sys/_types/_fsblkcnt_t.h \
  /usr/include/sys/_types/_fsfilcnt_t.h /usr/include/_types/_nl_item.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/bitset \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__bit_reference \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/vector \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__split_buffer \
  ../matrix/matrix-wrapper.h ../matrix/matrix-common.h \
  ../matrix/snowboy-blas.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/Accelerate.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/../Frameworks/vecLib.framework/Headers/vecLib.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vecLibTypes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mm_malloc.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/emmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/f16cintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBasicOps.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/immintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/tmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/smmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/wmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_aes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_pclmul.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/clflushoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avxintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmi2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/lzcntintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512fintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512bwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512cdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512dqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlbwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlcdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vldqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512erintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmavlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmivlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512pfintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pkuintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/rtmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xtestintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/shaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fxsrintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavecintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavesintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/adxintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBigNum.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vectorOps.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vfp.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vDSP.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdbool.h \
  /System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h \
  /usr/include/TargetConditionals.h /usr/include/os/availability.h \
  /usr/include/AvailabilityMacros.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/cblas.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/clapack.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/LinearAlgebra.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/base.h \
  /usr/include/os/object.h /usr/include/os/base.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/object.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/matrix.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/vector.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/splat.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/arithmetic.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/linear_systems.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/norms.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Sparse.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Types.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/BLAS.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Quadrature.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Integration.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/BNNS/bnns.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vForce.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ciso646 \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/complex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cmath \
  /usr/include/math.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/sstream \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Types.h \
  /usr/include/unistd.h /usr/include/sys/unistd.h \
  /usr/include/sys/_types/_posix_vdisable.h \
  /usr/include/sys/_types/_seek_set.h /usr/include/sys/select.h \
  /usr/include/sys/_select.h /usr/include/sys/_types/_uuid_t.h \
  /usr/include/gethostuuid.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Alpha.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Convolution.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Conversion.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Geometry.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Histogram.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Morphology.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/BasicImageTypes.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Transform.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Utilities.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_CVUtilities.h \
  ../matrix/vector-wrapper.h ../utils/snowboy-debug.h \
  ../utils/snowboy-types.h ../utils/snowboy-utils.h \
  ../utils/snowboy-utils-inl.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_map \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__hash_table \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_set \
  ../utils/snowboy-math.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/random \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/numeric
vector-wrapper.o: vector-wrapper.cc \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/algorithm \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__config \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/initializer_list \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstddef \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stddef.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__stddef_max_align_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/type_traits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstring \
  /usr/include/string.h /usr/include/_types.h /usr/include/sys/_types.h \
  /usr/include/sys/cdefs.h /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h /usr/include/machine/_types.h \
  /usr/include/i386/_types.h /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/Availability.h /usr/include/AvailabilityInternal.h \
  /usr/include/sys/_types/_size_t.h /usr/include/sys/_types/_null.h \
  /usr/include/sys/_types/_ssize_t.h /usr/include/strings.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/utility \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/memory \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/typeinfo \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/exception \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdint \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h \
  /usr/include/sys/_types/_int16_t.h /usr/include/sys/_types/_int32_t.h \
  /usr/include/sys/_types/_int64_t.h /usr/include/_types/_uint8_t.h \
  /usr/include/_types/_uint16_t.h /usr/include/_types/_uint32_t.h \
  /usr/include/_types/_uint64_t.h /usr/include/sys/_types/_intptr_t.h \
  /usr/include/sys/_types/_uintptr_t.h /usr/include/_types/_intmax_t.h \
  /usr/include/_types/_uintmax_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/new \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef___deallocate \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/limits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__undef_min_max \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iterator \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/iosfwd \
  /usr/include/wchar.h /usr/include/sys/_types/_mbstate_t.h \
  /usr/include/sys/_types/_ct_rune_t.h /usr/include/sys/_types/_rune_t.h \
  /usr/include/sys/_types/_wchar_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdarg.h \
  /usr/include/stdio.h /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/stdio.h /usr/include/sys/_types/_off_t.h \
  /usr/include/time.h /usr/include/sys/_types/_clock_t.h \
  /usr/include/sys/_types/_time_t.h /usr/include/sys/_types/_timespec.h \
  /usr/include/_wctype.h /usr/include/sys/_types/_wint_t.h \
  /usr/include/_types/_wctype_t.h /usr/include/ctype.h \
  /usr/include/runetype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__functional_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__debug \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/tuple \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/atomic \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cmath \
  /usr/include/math.h ../matrix/matrix-wrapper.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/vector \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__bit_reference \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/climits \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/limits.h \
  /usr/include/limits.h /usr/include/machine/limits.h \
  /usr/include/i386/limits.h /usr/include/i386/_limits.h \
  /usr/include/sys/syslimits.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/stdexcept \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__split_buffer \
  ../matrix/matrix-common.h ../matrix/snowboy-blas.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/Accelerate.h \
  /System/Library/Frameworks/Accelerate.framework/Headers/../Frameworks/vecLib.framework/Headers/vecLib.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vecLibTypes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/mm_malloc.h \
  /usr/include/stdlib.h /usr/include/sys/wait.h \
  /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h \
  /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h \
  /usr/include/machine/signal.h /usr/include/i386/signal.h \
  /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h \
  /usr/include/mach/i386/_structs.h \
  /usr/include/sys/_pthread/_pthread_attr_t.h \
  /usr/include/sys/_types/_sigaltstack.h \
  /usr/include/sys/_types/_ucontext.h \
  /usr/include/sys/_types/_sigset_t.h /usr/include/sys/_types/_uid_t.h \
  /usr/include/sys/resource.h /usr/include/sys/_types/_timeval.h \
  /usr/include/machine/endian.h /usr/include/i386/endian.h \
  /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h \
  /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h \
  /usr/include/machine/types.h /usr/include/i386/types.h \
  /usr/include/sys/_types/_u_int8_t.h \
  /usr/include/sys/_types/_u_int16_t.h \
  /usr/include/sys/_types/_u_int32_t.h \
  /usr/include/sys/_types/_u_int64_t.h /usr/include/sys/_types/_dev_t.h \
  /usr/include/sys/_types/_mode_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/emmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/f16cintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBasicOps.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/immintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/tmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/smmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/wmmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_aes.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/__wmmintrin_pclmul.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/clflushoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avxintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/bmi2intrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/lzcntintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512fintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512bwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512cdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512dqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlbwintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vlcdintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vldqintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512erintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512ifmavlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmiintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512vbmivlintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/avx512pfintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/pkuintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/rtmintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xtestintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/shaintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/fxsrintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsaveoptintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavecintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/xsavesintrin.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/adxintrin.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vBigNum.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vectorOps.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vfp.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vDSP.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include/stdbool.h \
  /System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h \
  /usr/include/TargetConditionals.h /usr/include/os/availability.h \
  /usr/include/AvailabilityMacros.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/cblas.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/clapack.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/LinearAlgebra.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/base.h \
  /usr/include/os/object.h /usr/include/os/base.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/object.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/matrix.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/vector.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/splat.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/arithmetic.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/linear_systems.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/LinearAlgebra/norms.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Sparse.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/Types.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Sparse/BLAS.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Quadrature.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/Quadrature/Integration.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/BNNS/bnns.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Headers/vForce.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ciso646 \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/complex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/sstream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ostream \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ios \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/string \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwchar \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cwctype \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cctype \
  /usr/include/wctype.h /usr/include/_types/_wctrans_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/mutex \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__mutex_base \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/chrono \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ctime \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/ratio \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/system_error \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cerrno \
  /usr/include/errno.h /usr/include/sys/errno.h /usr/include/pthread.h \
  /usr/include/pthread/pthread_impl.h /usr/include/pthread/sched.h \
  /usr/include/sys/_pthread/_pthread_cond_t.h \
  /usr/include/sys/_pthread/_pthread_condattr_t.h \
  /usr/include/sys/_pthread/_pthread_key_t.h \
  /usr/include/sys/_pthread/_pthread_mutex_t.h \
  /usr/include/sys/_pthread/_pthread_mutexattr_t.h \
  /usr/include/sys/_pthread/_pthread_once_t.h \
  /usr/include/sys/_pthread/_pthread_rwlock_t.h \
  /usr/include/sys/_pthread/_pthread_rwlockattr_t.h \
  /usr/include/sys/_pthread/_pthread_t.h /usr/include/pthread/qos.h \
  /usr/include/sys/qos.h /usr/include/sys/_types/_mach_port_t.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/functional \
  /usr/include/locale.h /usr/include/_locale.h /usr/include/xlocale.h \
  /usr/include/_xlocale.h /usr/include/xlocale/_ctype.h \
  /usr/include/xlocale/__wctype.h /usr/include/xlocale/_stdio.h \
  /usr/include/xlocale/_stdlib.h /usr/include/xlocale/_string.h \
  /usr/include/xlocale/_time.h /usr/include/xlocale/_wchar.h \
  /usr/include/xlocale/_wctype.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/streambuf \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/locale \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/cstdlib \
  /usr/include/nl_types.h /usr/include/sys/types.h \
  /usr/include/sys/_types/_blkcnt_t.h \
  /usr/include/sys/_types/_blksize_t.h /usr/include/sys/_types/_gid_t.h \
  /usr/include/sys/_types/_in_addr_t.h \
  /usr/include/sys/_types/_in_port_t.h /usr/include/sys/_types/_ino_t.h \
  /usr/include/sys/_types/_ino64_t.h /usr/include/sys/_types/_key_t.h \
  /usr/include/sys/_types/_nlink_t.h \
  /usr/include/sys/_types/_useconds_t.h \
  /usr/include/sys/_types/_suseconds_t.h \
  /usr/include/sys/_types/_rsize_t.h /usr/include/sys/_types/_errno_t.h \
  /usr/include/sys/_types/_fd_def.h \
  /usr/include/sys/_types/_fd_setsize.h \
  /usr/include/sys/_types/_fd_set.h /usr/include/sys/_types/_fd_clr.h \
  /usr/include/sys/_types/_fd_zero.h /usr/include/sys/_types/_fd_isset.h \
  /usr/include/sys/_types/_fd_copy.h \
  /usr/include/sys/_types/_fsblkcnt_t.h \
  /usr/include/sys/_types/_fsfilcnt_t.h /usr/include/_types/_nl_item.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/bitset \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/istream \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Types.h \
  /usr/include/unistd.h /usr/include/sys/unistd.h \
  /usr/include/sys/_types/_posix_vdisable.h \
  /usr/include/sys/_types/_seek_set.h /usr/include/sys/select.h \
  /usr/include/sys/_select.h /usr/include/sys/_types/_uuid_t.h \
  /usr/include/gethostuuid.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Alpha.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Convolution.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Conversion.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Geometry.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Histogram.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Morphology.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/BasicImageTypes.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/Transform.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_Utilities.h \
  /System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/Headers/vImage_CVUtilities.h \
  ../matrix/vector-wrapper.h ../utils/snowboy-debug.h \
  ../utils/snowboy-types.h ../utils/snowboy-utils.h \
  ../utils/snowboy-utils-inl.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_map \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/__hash_table \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/unordered_set \
  ../utils/snowboy-io.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/fstream \
  ../utils/snowboy-io-inl.h ../utils/snowboy-math.h \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/random \
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1/numeric
