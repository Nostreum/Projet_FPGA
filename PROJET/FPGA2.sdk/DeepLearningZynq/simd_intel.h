#ifndef __SIMD_INTEL_H
#define __SIMD_INTEL_H

// doc : https://software.intel.com/sites/landingpage/IntrinsicsGuide/

#include "emmintrin.h"
#include "smmintrin.h"
#include "pmmintrin.h"

typedef 	__m128	v4x3;

#define v4x3_setall(a)			_mm_set_ps1(a)

#define v4x3_loadu(tab, i)		_mm_loadu_ps(&tab[i])
#define v4x3_load(tab, i)		_mm_load_ps(&tab[i])
#define v4x3_store(tab, i, val)	_mm_store_ps(&tab[i], val)

#define v4x3_mul(a, b)			_mm_mul_ps(a,b)
#define v4x3_add(a, b)			_mm_add_ps(a,b)
#define v4x3_shuffle(a,b,imm)	_mm_shuffle_ps(a,b,imm)
#define v4x3_hadd(a,b)			_mm_hadd_ps(a,b)

#define v4x3_extract(a,imm)		_mm_cvtss_f32(_mm_shuffle_ps(a, a, _MM_SHUFFLE(0, 0, 0, imm)));

#endif
