#ifndef __SIMD_H_
#define __SIMD_H_


#include "simd_neon.h"


#define SIMD_ALIGNMENT      16

typedef float afloat32 __attribute__ ((aligned(SIMD_ALIGNMENT)));

void v4x3_printf(v4x3 a, char *name);
float ext(v4x3 b);

#endif
