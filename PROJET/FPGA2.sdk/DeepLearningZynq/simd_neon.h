#ifndef __SIMD_NEON_H
#define __SIMD_NEON_H

// doc : http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0491h/CIHJBEFE.html

#include "arm_neon.h"

typedef 	float32x4_t		v4x3;
typedef		float32x2_t		v2x3;

#define v4x3_load(tab, i)		vld1q_f32((v4x3*) &tab[i])
#define v2x3_load(tab, i)		vld1_f32(&tab[i])
#define v4x3_store(tab, i, val)	vst1q_f32(&tab[i], val)

#define v4x3_setall(a)			vdupq_n_f32(a)
#define v4x3_mul(a, b)			vmulq_f32(a,b)
#define v4x3_add(a, b)			vaddq_f32(a,b)
#define v4x3_hadd(a)			vadd_f32(vget_high_f32(a), vget_low_f32(a));

#define v2x3_setall(a)			vdup_n_f32(a)
#define v2x3_add(a, b)			vadd_f32(a,b)
#define v2x3_hadd(a)

#define v4x3_extract(a,imm) 	vgetq_lane_f32(a,imm)
#define v2x3_extract(a,imm)		vget_lane_f32(a, imm)

#define v4x3_shuffle1(a)		vrev64q_f32(a)

#endif
