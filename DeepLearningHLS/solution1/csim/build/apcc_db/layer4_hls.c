/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void calculateLayer4(signed short *llvm_cbe_Layer3_Neurons_CPU_hls, signed short *llvm_cbe_Layer3_Weights_CPU_hls, signed short *llvm_cbe_Layer4_Neurons_CPU_hls);
void calculateLayer3(signed short *llvm_cbe_Layer2_Neurons_CPU_hls, signed short *llvm_cbe_Layer2_Weights_CPU_hls, signed short *llvm_cbe_Layer3_Neurons_CPU_hls);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }
static const ConstantDoubleTy FPConstant0 = 0x3FE55555571F7693ULL;    /* 6.666667e-01 */

void calculateLayer4(signed short *llvm_cbe_Layer3_Neurons_CPU_hls, signed short *llvm_cbe_Layer3_Weights_CPU_hls, signed short *llvm_cbe_Layer4_Neurons_CPU_hls) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_count = 0;
  unsigned int llvm_cbe_storemerge10;
  unsigned int llvm_cbe_storemerge10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  signed short *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  unsigned short llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge19_count = 0;
  unsigned int llvm_cbe_storemerge19;
  unsigned int llvm_cbe_storemerge19__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  unsigned short llvm_cbe_tmp__5;
  unsigned short llvm_cbe_tmp__5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge27_count = 0;
  unsigned int llvm_cbe_storemerge27;
  unsigned int llvm_cbe_storemerge27__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned short llvm_cbe_tmp__8;
  unsigned short llvm_cbe_tmp__8__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  signed short *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned short llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  signed short *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned short llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned short llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned short llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned int llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  signed short *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  unsigned short llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  signed short *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  unsigned short llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned short llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned short llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  signed short *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned short llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  signed short *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned short llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  unsigned short llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  unsigned short llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  signed short *llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  unsigned short llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  signed short *llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  unsigned short llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  unsigned short llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  unsigned short llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  unsigned int llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  signed short *llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  unsigned short llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned int llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  signed short *llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned short llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  unsigned int llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  unsigned int llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  unsigned short llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned short llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned int llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond11_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  unsigned int llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  double llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  double llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  float llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  float llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  float llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  float llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  unsigned short llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  signed short *llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  unsigned int llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond12_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @calculateLayer4\n");
  llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__82;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__82:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10 = phi i32 [ 0, %%0 ], [ %%84, %%74  for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_storemerge10_count);
  llvm_cbe_storemerge10 = (unsigned int )llvm_cbe_storemerge10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__81);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = mul nsw i32 %%storemerge10, 1251, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__1 = (unsigned int )((unsigned int )(llvm_cbe_storemerge10&4294967295ull)) * ((unsigned int )(1251u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__1&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i16* %%Layer3_Weights_CPU_hls, i32 %%2, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__2 = (signed short *)(&llvm_cbe_Layer3_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i16* %%3, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__3 = (unsigned short )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add i32 %%2, 1, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(llvm_cbe_tmp__1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__4&4294967295ull)));
  llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__5__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__3;   /* for PHI node */
  goto llvm_cbe__2e_preheader5;

llvm_cbe_tmp__83:
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = zext i16 %%70 to i32, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__72 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__69&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = sitofp i32 %%75 to double, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_163_count);
  llvm_cbe_tmp__73 = (double )((double )(signed int )llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__73, *(long long*)(&llvm_cbe_tmp__73));
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = fmul double %%76, 0x3FE55555571F7693, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__74 = (double )llvm_cbe_tmp__73 * (*(double*)&FPConstant0);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__74, *(long long*)(&llvm_cbe_tmp__74));
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = fptrunc double %%77 to float, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__75 = (float )((float )llvm_cbe_tmp__74);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = tail call float @sinhf(float %%78) nounwind, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__76 = (float ) /*tail*/ sinhf(llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
printf("\nReturn  = %f",llvm_cbe_tmp__76);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = tail call float @coshf(float %%78) nounwind, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__77 = (float ) /*tail*/ coshf(llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
printf("\nReturn  = %f",llvm_cbe_tmp__77);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = fdiv float %%79, %%80, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__78 = (float )((float )(llvm_cbe_tmp__76 / llvm_cbe_tmp__77));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__78, *(int*)(&llvm_cbe_tmp__78));
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = fptoui float %%81 to i16, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__79 = (unsigned short )((unsigned short )llvm_cbe_tmp__78&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = getelementptr inbounds i16* %%Layer4_Neurons_CPU_hls, i32 %%storemerge10, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__80 = (signed short *)(&llvm_cbe_Layer4_Neurons_CPU_hls[(((signed int )llvm_cbe_storemerge10))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge10 = 0x%X",((signed int )llvm_cbe_storemerge10));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%82, i16* %%83, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_171_count);
  *llvm_cbe_tmp__80 = llvm_cbe_tmp__79;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = add nsw i32 %%storemerge10, 1, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__81 = (unsigned int )((unsigned int )(llvm_cbe_storemerge10&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__81&4294967295ull)));
  if (((llvm_cbe_tmp__81&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__84;
  } else {
    llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__81;   /* for PHI node */
    goto llvm_cbe_tmp__82;
  }

  do {     /* Syntactic loop '.preheader5' to make GCC happy */
llvm_cbe__2e_preheader5:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge19 = phi i32 [ 0, %%1 ], [ %%73, %%72  for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_storemerge19_count);
  llvm_cbe_storemerge19 = (unsigned int )llvm_cbe_storemerge19__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge19 = 0x%X",llvm_cbe_storemerge19);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__71);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = phi i16 [ %%4, %%1 ], [ %%70, %%72  for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__5 = (unsigned short )llvm_cbe_tmp__5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__5);
printf("\n = 0x%X",llvm_cbe_tmp__3);
printf("\n = 0x%X",llvm_cbe_tmp__69);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = mul nsw i32 %%storemerge19, 25, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) * ((unsigned int )(25u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add i32 %%5, %%7, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__7 = (unsigned int )((unsigned int )(llvm_cbe_tmp__4&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__6&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__7&4294967295ull)));
  llvm_cbe_storemerge27__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__5;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe_tmp__85:
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = add nsw i32 %%storemerge19, 1, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__71 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__71&4294967295ull)));
  if (((llvm_cbe_tmp__71&4294967295U) == (50u&4294967295U))) {
    goto llvm_cbe_tmp__83;
  } else {
    llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__71;   /* for PHI node */
    llvm_cbe_tmp__5__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__69;   /* for PHI node */
    goto llvm_cbe__2e_preheader5;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge27 = phi i32 [ 0, %%.preheader5 ], [ %%71, %%.preheader  for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_storemerge27_count);
  llvm_cbe_storemerge27 = (unsigned int )llvm_cbe_storemerge27__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge27 = 0x%X",llvm_cbe_storemerge27);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__70);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = phi i16 [ %%6, %%.preheader5 ], [ %%70, %%.preheader  for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__8 = (unsigned short )llvm_cbe_tmp__8__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__8);
printf("\n = 0x%X",llvm_cbe_tmp__5);
printf("\n = 0x%X",llvm_cbe_tmp__69);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = mul nsw i32 %%storemerge27, 5, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_storemerge27&4294967295ull)) * ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%8, %%10, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__9&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add i32 %%10, %%7, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_tmp__9&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__6&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i16* %%Layer3_Weights_CPU_hls, i32 %%11, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__12 = (signed short *)(&llvm_cbe_Layer3_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__10))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__10));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i16* %%13, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__13 = (unsigned short )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = zext i16 %%14 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__14 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__13&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds i16* %%Layer3_Neurons_CPU_hls, i32 %%12, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__15 = (signed short *)(&llvm_cbe_Layer3_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i16* %%16, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__16 = (unsigned short )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = zext i16 %%17 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__16&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = mul nsw i32 %%18, %%15, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_tmp__17&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__14&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = lshr i32 %%19, 8, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__18&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__19&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = trunc i32 %%20 to i16, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__20 = (unsigned short )((unsigned short )llvm_cbe_tmp__19&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add i16 %%21, %%9, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__21 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__20&65535ull)) + ((unsigned short )(llvm_cbe_tmp__8&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__21&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add i32 %%11, 1, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__22 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__22&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds i16* %%Layer3_Weights_CPU_hls, i32 %%23, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__23 = (signed short *)(&llvm_cbe_Layer3_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__22))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__22));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i16* %%24, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__24 = (unsigned short )*llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = zext i16 %%25 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__25 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__24&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add i32 %%12, 1, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__26 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__26&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds i16* %%Layer3_Neurons_CPU_hls, i32 %%27, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_69_count);
  llvm_cbe_tmp__27 = (signed short *)(&llvm_cbe_Layer3_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__26))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__26));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = load i16* %%28, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__28 = (unsigned short )*llvm_cbe_tmp__27;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = zext i16 %%29 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__29 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__28&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = mul nsw i32 %%30, %%26, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_tmp__29&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__25&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = lshr i32 %%31, 8, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__30&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__31&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = trunc i32 %%32 to i16, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__32 = (unsigned short )((unsigned short )llvm_cbe_tmp__31&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = add i16 %%33, %%22, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__33 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__32&65535ull)) + ((unsigned short )(llvm_cbe_tmp__21&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__33&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add i32 %%11, 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds i16* %%Layer3_Weights_CPU_hls, i32 %%35, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__35 = (signed short *)(&llvm_cbe_Layer3_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__34))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__34));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i16* %%36, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__36 = (unsigned short )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = zext i16 %%37 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__37 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__36&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = add i32 %%12, 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__38 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__38&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds i16* %%Layer3_Neurons_CPU_hls, i32 %%39, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__39 = (signed short *)(&llvm_cbe_Layer3_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__38))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__38));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i16* %%40, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__40 = (unsigned short )*llvm_cbe_tmp__39;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = zext i16 %%41 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__41 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__40&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = mul nsw i32 %%42, %%38, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__42 = (unsigned int )((unsigned int )(llvm_cbe_tmp__41&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__37&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__42&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = lshr i32 %%43, 8, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__43 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__42&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__43&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = trunc i32 %%44 to i16, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__44 = (unsigned short )((unsigned short )llvm_cbe_tmp__43&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = add i16 %%45, %%34, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__45 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__44&65535ull)) + ((unsigned short )(llvm_cbe_tmp__33&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__45&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add i32 %%11, 3, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = getelementptr inbounds i16* %%Layer3_Weights_CPU_hls, i32 %%47, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__47 = (signed short *)(&llvm_cbe_Layer3_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__46))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__46));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i16* %%48, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__48 = (unsigned short )*llvm_cbe_tmp__47;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = zext i16 %%49 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__49 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__48&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add i32 %%12, 3, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__50 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__50&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds i16* %%Layer3_Neurons_CPU_hls, i32 %%51, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__51 = (signed short *)(&llvm_cbe_Layer3_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__50))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__50));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = load i16* %%52, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__52 = (unsigned short )*llvm_cbe_tmp__51;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = zext i16 %%53 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__53 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__52&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = mul nsw i32 %%54, %%50, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_114_count);
  llvm_cbe_tmp__54 = (unsigned int )((unsigned int )(llvm_cbe_tmp__53&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__49&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__54&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = lshr i32 %%55, 8, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__55 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__54&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__55&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = trunc i32 %%56 to i16, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__56 = (unsigned short )((unsigned short )llvm_cbe_tmp__55&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = add i16 %%57, %%46, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_117_count);
  llvm_cbe_tmp__57 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__56&65535ull)) + ((unsigned short )(llvm_cbe_tmp__45&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__57&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = add i32 %%11, 4, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_127_count);
  llvm_cbe_tmp__58 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__58&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = getelementptr inbounds i16* %%Layer3_Weights_CPU_hls, i32 %%59, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__59 = (signed short *)(&llvm_cbe_Layer3_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__58))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__58));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = load i16* %%60, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__60 = (unsigned short )*llvm_cbe_tmp__59;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = zext i16 %%61 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__61 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__60&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = add i32 %%12, 4, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__62 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__62&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds i16* %%Layer3_Neurons_CPU_hls, i32 %%63, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__63 = (signed short *)(&llvm_cbe_Layer3_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__62))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__62));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = load i16* %%64, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__64 = (unsigned short )*llvm_cbe_tmp__63;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__64);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = zext i16 %%65 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__65 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__64&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = mul nsw i32 %%66, %%62, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__66 = (unsigned int )((unsigned int )(llvm_cbe_tmp__65&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__61&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__66&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = lshr i32 %%67, 8, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__67 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__67&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = trunc i32 %%68 to i16, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__68 = (unsigned short )((unsigned short )llvm_cbe_tmp__67&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = add i16 %%69, %%58, !dbg !2 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__69 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__68&65535ull)) + ((unsigned short )(llvm_cbe_tmp__57&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__69&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = add nsw i32 %%storemerge27, 1, !dbg !5 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__70 = (unsigned int )((unsigned int )(llvm_cbe_storemerge27&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__70&4294967295ull)));
  if (((llvm_cbe_tmp__70&4294967295U) == (5u&4294967295U))) {
    goto llvm_cbe_tmp__85;
  } else {
    llvm_cbe_storemerge27__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__70;   /* for PHI node */
    llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__69;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '.preheader5' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__84:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @calculateLayer4}\n");
  return;
}


void calculateLayer3(signed short *llvm_cbe_Layer2_Neurons_CPU_hls, signed short *llvm_cbe_Layer2_Weights_CPU_hls, signed short *llvm_cbe_Layer3_Neurons_CPU_hls) {
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  unsigned int llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  signed short *llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  unsigned int llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge111_count = 0;
  unsigned int llvm_cbe_storemerge111;
  unsigned int llvm_cbe_storemerge111__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  unsigned int llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  unsigned int llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  unsigned int llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge29_count = 0;
  unsigned int llvm_cbe_storemerge29;
  unsigned int llvm_cbe_storemerge29__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  unsigned short llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  unsigned int llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge37_count = 0;
  unsigned int llvm_cbe_storemerge37;
  unsigned int llvm_cbe_storemerge37__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  unsigned short llvm_cbe_tmp__95;
  unsigned short llvm_cbe_tmp__95__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  unsigned int llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  unsigned int llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  unsigned int llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  unsigned int llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  unsigned int llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  unsigned int llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  unsigned int llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge45_count = 0;
  unsigned int llvm_cbe_storemerge45;
  unsigned int llvm_cbe_storemerge45__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  unsigned short llvm_cbe_tmp__104;
  unsigned short llvm_cbe_tmp__104__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  unsigned int llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  unsigned int llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  unsigned int llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  signed short *llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  unsigned short llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  unsigned int llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  unsigned int llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  unsigned int llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  signed short *llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  unsigned short llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  unsigned short llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  unsigned int llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  signed short *llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  unsigned short llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  unsigned int llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  signed short *llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  unsigned short llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  unsigned int llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  unsigned int llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  unsigned short llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  unsigned int llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  signed short *llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  unsigned short llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  unsigned int llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  unsigned int llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  signed short *llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  unsigned short llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  unsigned int llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  unsigned int llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  unsigned int llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  unsigned short llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  unsigned int llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  signed short *llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  unsigned short llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  unsigned int llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  unsigned int llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  signed short *llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  unsigned short llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  unsigned int llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  unsigned int llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  unsigned int llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  unsigned short llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  unsigned int llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  signed short *llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  unsigned short llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  unsigned int llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  unsigned int llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  signed short *llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  unsigned short llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  unsigned int llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  unsigned int llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  unsigned int llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  unsigned short llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  unsigned int llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  signed short *llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  unsigned short llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  unsigned int llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  unsigned int llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  signed short *llvm_cbe_tmp__168;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  unsigned short llvm_cbe_tmp__169;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  unsigned int llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  unsigned int llvm_cbe_tmp__171;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  unsigned int llvm_cbe_tmp__172;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  unsigned short llvm_cbe_tmp__173;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  unsigned short llvm_cbe_tmp__174;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  unsigned short llvm_cbe_tmp__175;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  unsigned short llvm_cbe_tmp__176;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  unsigned short llvm_cbe_tmp__177;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  unsigned short llvm_cbe_tmp__178;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  unsigned short llvm_cbe_tmp__179;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  unsigned int llvm_cbe_tmp__180;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  unsigned int llvm_cbe_tmp__181;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond13_count = 0;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  unsigned int llvm_cbe_tmp__182;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  double llvm_cbe_tmp__183;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  double llvm_cbe_tmp__184;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  double llvm_cbe_tmp__185;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  double llvm_cbe_tmp__186;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  double llvm_cbe_tmp__187;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  unsigned short llvm_cbe_tmp__188;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  unsigned int llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  signed short *llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  unsigned int llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond14_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  unsigned int llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond15_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  unsigned int llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond16_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @calculateLayer3\n");
  llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader10;

  do {     /* Syntactic loop '.preheader10' to make GCC happy */
llvm_cbe__2e_preheader10:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ 0, %%0 ], [ %%114, %%113  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__193);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = mul nsw i32 %%storemerge12, 156, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_219_count);
  llvm_cbe_tmp__86 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) * ((unsigned int )(156u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__86&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%1, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_220_count);
  llvm_cbe_tmp__87 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__86))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__86));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = or i32 %%1, 1, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_221_count);
  llvm_cbe_tmp__88 = (unsigned int )llvm_cbe_tmp__86 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__88);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = mul nsw i32 %%storemerge12, 25, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_222_count);
  llvm_cbe_tmp__89 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) * ((unsigned int )(25u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__89&4294967295ull)));
  llvm_cbe_storemerge111__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader8;

llvm_cbe_tmp__194:
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = add nsw i32 %%storemerge12, 1, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_441_count);
  llvm_cbe_tmp__193 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__193&4294967295ull)));
  if (((llvm_cbe_tmp__193&4294967295U) == (50u&4294967295U))) {
    goto llvm_cbe_tmp__195;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__193;   /* for PHI node */
    goto llvm_cbe__2e_preheader10;
  }

  do {     /* Syntactic loop '.preheader8' to make GCC happy */
llvm_cbe__2e_preheader8:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge111 = phi i32 [ 0, %%.preheader10 ], [ %%112, %%111  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_storemerge111_count);
  llvm_cbe_storemerge111 = (unsigned int )llvm_cbe_storemerge111__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge111 = 0x%X",llvm_cbe_storemerge111);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__192);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = shl i32 %%storemerge111, 1, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_233_count);
  llvm_cbe_tmp__90 = (unsigned int )llvm_cbe_storemerge111 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = mul nsw i32 %%storemerge111, 5, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_234_count);
  llvm_cbe_tmp__91 = (unsigned int )((unsigned int )(llvm_cbe_storemerge111&4294967295ull)) * ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__91&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add i32 %%6, %%4, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_235_count);
  llvm_cbe_tmp__92 = (unsigned int )((unsigned int )(llvm_cbe_tmp__91&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__89&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__92&4294967295ull)));
  llvm_cbe_storemerge29__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__196;

llvm_cbe_tmp__197:
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = add nsw i32 %%storemerge111, 1, !dbg !5 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_429_count);
  llvm_cbe_tmp__192 = (unsigned int )((unsigned int )(llvm_cbe_storemerge111&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__192&4294967295ull)));
  if (((llvm_cbe_tmp__192&4294967295U) == (5u&4294967295U))) {
    goto llvm_cbe_tmp__194;
  } else {
    llvm_cbe_storemerge111__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__192;   /* for PHI node */
    goto llvm_cbe__2e_preheader8;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__196:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge29 = phi i32 [ 0, %%.preheader8 ], [ %%110, %%100  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_storemerge29_count);
  llvm_cbe_storemerge29 = (unsigned int )llvm_cbe_storemerge29__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge29 = 0x%X",llvm_cbe_storemerge29);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__191);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i16* %%2, align 2, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_237_count);
  llvm_cbe_tmp__93 = (unsigned short )*llvm_cbe_tmp__87;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = shl nsw i32 %%storemerge29, 1, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_262_count);
  llvm_cbe_tmp__94 = (unsigned int )llvm_cbe_storemerge29 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__94);
  llvm_cbe_storemerge37__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__95__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__93;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe_tmp__198:
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = zext i16 %%96 to i32, !dbg !5 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_407_count);
  llvm_cbe_tmp__182 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__179&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = sitofp i32 %%101 to double, !dbg !5 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_408_count);
  llvm_cbe_tmp__183 = (double )((double )(signed int )llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__183, *(long long*)(&llvm_cbe_tmp__183));
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = fmul double %%102, 0x3FE55555571F7693, !dbg !5 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_409_count);
  llvm_cbe_tmp__184 = (double )llvm_cbe_tmp__183 * (*(double*)&FPConstant0);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__184, *(long long*)(&llvm_cbe_tmp__184));
if (AESL_DEBUG_TRACE)
printf("\n  %%104 = tail call double @sinh(double %%103) nounwind, !dbg !5 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_410_count);
  llvm_cbe_tmp__185 = (double ) /*tail*/ sinh(llvm_cbe_tmp__184);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__184, *(long long*)(&llvm_cbe_tmp__184));
printf("\nReturn  = %lf",llvm_cbe_tmp__185);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = tail call double @cosh(double %%103) nounwind, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_411_count);
  llvm_cbe_tmp__186 = (double ) /*tail*/ cosh(llvm_cbe_tmp__184);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__184, *(long long*)(&llvm_cbe_tmp__184));
printf("\nReturn  = %lf",llvm_cbe_tmp__186);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = fdiv double %%104, %%105, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_412_count);
  llvm_cbe_tmp__187 = (double )llvm_cbe_tmp__185 / llvm_cbe_tmp__186;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__187, *(long long*)(&llvm_cbe_tmp__187));
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = fptoui double %%106 to i16, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_413_count);
  llvm_cbe_tmp__188 = (unsigned short )((unsigned short )llvm_cbe_tmp__187&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__188);
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = add i32 %%7, %%storemerge29, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_414_count);
  llvm_cbe_tmp__189 = (unsigned int )((unsigned int )(llvm_cbe_tmp__92&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge29&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__189&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = getelementptr inbounds i16* %%Layer3_Neurons_CPU_hls, i32 %%108, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_415_count);
  llvm_cbe_tmp__190 = (signed short *)(&llvm_cbe_Layer3_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__189))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__189));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%107, i16* %%109, align 2, !dbg !4 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_416_count);
  *llvm_cbe_tmp__190 = llvm_cbe_tmp__188;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__188);
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = add nsw i32 %%storemerge29, 1, !dbg !5 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_417_count);
  llvm_cbe_tmp__191 = (unsigned int )((unsigned int )(llvm_cbe_storemerge29&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__191&4294967295ull)));
  if (((llvm_cbe_tmp__191&4294967295U) == (5u&4294967295U))) {
    goto llvm_cbe_tmp__197;
  } else {
    llvm_cbe_storemerge29__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__191;   /* for PHI node */
    goto llvm_cbe_tmp__196;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge37 = phi i32 [ 0, %%8 ], [ %%99, %%98  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_storemerge37_count);
  llvm_cbe_storemerge37 = (unsigned int )llvm_cbe_storemerge37__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge37 = 0x%X",llvm_cbe_storemerge37);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__181);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = phi i16 [ %%9, %%8 ], [ %%96, %%98  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_264_count);
  llvm_cbe_tmp__95 = (unsigned short )llvm_cbe_tmp__95__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__95);
printf("\n = 0x%X",llvm_cbe_tmp__93);
printf("\n = 0x%X",llvm_cbe_tmp__179);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = mul nsw i32 %%storemerge37, 5, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_279_count);
  llvm_cbe_tmp__96 = (unsigned int )((unsigned int )(llvm_cbe_storemerge37&4294967295ull)) * ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__96&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%storemerge37, %%5, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_280_count);
  llvm_cbe_tmp__97 = (unsigned int )((unsigned int )(llvm_cbe_storemerge37&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__90&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__97&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = mul nsw i32 %%13, 13, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_281_count);
  llvm_cbe_tmp__98 = (unsigned int )((unsigned int )(llvm_cbe_tmp__97&4294967295ull)) * ((unsigned int )(13u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__98&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = add i32 %%14, 169, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_282_count);
  llvm_cbe_tmp__99 = (unsigned int )((unsigned int )(llvm_cbe_tmp__98&4294967295ull)) + ((unsigned int )(169u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__99&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add i32 %%14, 338, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__100 = (unsigned int )((unsigned int )(llvm_cbe_tmp__98&4294967295ull)) + ((unsigned int )(338u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__100&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add i32 %%14, 507, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__101 = (unsigned int )((unsigned int )(llvm_cbe_tmp__98&4294967295ull)) + ((unsigned int )(507u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__101&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = add i32 %%14, 676, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__102 = (unsigned int )((unsigned int )(llvm_cbe_tmp__98&4294967295ull)) + ((unsigned int )(676u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__102&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add i32 %%14, 845, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_286_count);
  llvm_cbe_tmp__103 = (unsigned int )((unsigned int )(llvm_cbe_tmp__98&4294967295ull)) + ((unsigned int )(845u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__103&4294967295ull)));
  llvm_cbe_storemerge45__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__104__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__95;   /* for PHI node */
  goto llvm_cbe_tmp__199;

llvm_cbe_tmp__200:
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = add nsw i32 %%storemerge37, 1, !dbg !6 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_390_count);
  llvm_cbe_tmp__181 = (unsigned int )((unsigned int )(llvm_cbe_storemerge37&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__181&4294967295ull)));
  if (((llvm_cbe_tmp__181&4294967295U) == (5u&4294967295U))) {
    goto llvm_cbe_tmp__198;
  } else {
    llvm_cbe_storemerge37__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__181;   /* for PHI node */
    llvm_cbe_tmp__95__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__179;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__199:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge45 = phi i32 [ 0, %%.preheader ], [ %%97, %%20  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_storemerge45_count);
  llvm_cbe_storemerge45 = (unsigned int )llvm_cbe_storemerge45__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge45 = 0x%X",llvm_cbe_storemerge45);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__180);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = phi i16 [ %%11, %%.preheader ], [ %%96, %%20  for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_288_count);
  llvm_cbe_tmp__104 = (unsigned short )llvm_cbe_tmp__104__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__104);
printf("\n = 0x%X",llvm_cbe_tmp__95);
printf("\n = 0x%X",llvm_cbe_tmp__179);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add nsw i32 %%storemerge45, %%12, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_289_count);
  llvm_cbe_tmp__105 = (unsigned int )((unsigned int )(llvm_cbe_storemerge45&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__96&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__105&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = mul nsw i32 %%22, 6, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_290_count);
  llvm_cbe_tmp__106 = (unsigned int )((unsigned int )(llvm_cbe_tmp__105&4294967295ull)) * ((unsigned int )(6u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__106&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add nsw i32 %%23, %%3, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_291_count);
  llvm_cbe_tmp__107 = (unsigned int )((unsigned int )(llvm_cbe_tmp__106&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__88&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__107&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%24, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_292_count);
  llvm_cbe_tmp__108 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__107))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__107));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i16* %%25, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_293_count);
  llvm_cbe_tmp__109 = (unsigned short )*llvm_cbe_tmp__108;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__109);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = zext i16 %%26 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_294_count);
  llvm_cbe_tmp__110 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__109&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__110);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = add nsw i32 %%storemerge45, %%10, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_295_count);
  llvm_cbe_tmp__111 = (unsigned int )((unsigned int )(llvm_cbe_storemerge45&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__94&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__111&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = add nsw i32 %%28, %%14, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_296_count);
  llvm_cbe_tmp__112 = (unsigned int )((unsigned int )(llvm_cbe_tmp__111&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__98&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__112&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds i16* %%Layer2_Neurons_CPU_hls, i32 %%29, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_297_count);
  llvm_cbe_tmp__113 = (signed short *)(&llvm_cbe_Layer2_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__112))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__112));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load i16* %%30, align 2, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_298_count);
  llvm_cbe_tmp__114 = (unsigned short )*llvm_cbe_tmp__113;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = zext i16 %%31 to i32, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_299_count);
  llvm_cbe_tmp__115 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__114&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__115);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = mul nsw i32 %%32, %%27, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_300_count);
  llvm_cbe_tmp__116 = (unsigned int )((unsigned int )(llvm_cbe_tmp__115&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__110&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__116&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = lshr i32 %%33, 8, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_301_count);
  llvm_cbe_tmp__117 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__116&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__117&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = trunc i32 %%34 to i16, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_302_count);
  llvm_cbe_tmp__118 = (unsigned short )((unsigned short )llvm_cbe_tmp__117&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__118);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add nsw i32 %%24, 1, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_303_count);
  llvm_cbe_tmp__119 = (unsigned int )((unsigned int )(llvm_cbe_tmp__107&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__119&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%36, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_304_count);
  llvm_cbe_tmp__120 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__119))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__119));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = load i16* %%37, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_305_count);
  llvm_cbe_tmp__121 = (unsigned short )*llvm_cbe_tmp__120;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = zext i16 %%38 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_306_count);
  llvm_cbe_tmp__122 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__121&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = add i32 %%15, %%28, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_307_count);
  llvm_cbe_tmp__123 = (unsigned int )((unsigned int )(llvm_cbe_tmp__99&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__111&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__123&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds i16* %%Layer2_Neurons_CPU_hls, i32 %%40, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_308_count);
  llvm_cbe_tmp__124 = (signed short *)(&llvm_cbe_Layer2_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__123))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__123));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i16* %%41, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_309_count);
  llvm_cbe_tmp__125 = (unsigned short )*llvm_cbe_tmp__124;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__125);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = zext i16 %%42 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_310_count);
  llvm_cbe_tmp__126 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__125&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = mul nsw i32 %%43, %%39, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_311_count);
  llvm_cbe_tmp__127 = (unsigned int )((unsigned int )(llvm_cbe_tmp__126&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__122&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__127&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = lshr i32 %%44, 8, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_312_count);
  llvm_cbe_tmp__128 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__127&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__128&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = trunc i32 %%45 to i16, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_313_count);
  llvm_cbe_tmp__129 = (unsigned short )((unsigned short )llvm_cbe_tmp__128&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__129);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add nsw i32 %%24, 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_314_count);
  llvm_cbe_tmp__130 = (unsigned int )((unsigned int )(llvm_cbe_tmp__107&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__130&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%47, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_315_count);
  llvm_cbe_tmp__131 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__130))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__130));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i16* %%48, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__132 = (unsigned short )*llvm_cbe_tmp__131;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__132);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = zext i16 %%49 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__133 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__132&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__133);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add i32 %%16, %%28, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_318_count);
  llvm_cbe_tmp__134 = (unsigned int )((unsigned int )(llvm_cbe_tmp__100&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__111&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__134&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds i16* %%Layer2_Neurons_CPU_hls, i32 %%51, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_319_count);
  llvm_cbe_tmp__135 = (signed short *)(&llvm_cbe_Layer2_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__134))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__134));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = load i16* %%52, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_320_count);
  llvm_cbe_tmp__136 = (unsigned short )*llvm_cbe_tmp__135;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__136);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = zext i16 %%53 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_321_count);
  llvm_cbe_tmp__137 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__136&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__137);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = mul nsw i32 %%54, %%50, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_322_count);
  llvm_cbe_tmp__138 = (unsigned int )((unsigned int )(llvm_cbe_tmp__137&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__133&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__138&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = lshr i32 %%55, 8, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_323_count);
  llvm_cbe_tmp__139 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__138&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__139&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = trunc i32 %%56 to i16, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_324_count);
  llvm_cbe_tmp__140 = (unsigned short )((unsigned short )llvm_cbe_tmp__139&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = add nsw i32 %%24, 3, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_325_count);
  llvm_cbe_tmp__141 = (unsigned int )((unsigned int )(llvm_cbe_tmp__107&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__141&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%58, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_326_count);
  llvm_cbe_tmp__142 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__141))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__141));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = load i16* %%59, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_327_count);
  llvm_cbe_tmp__143 = (unsigned short )*llvm_cbe_tmp__142;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__143);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = zext i16 %%60 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_328_count);
  llvm_cbe_tmp__144 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__143&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = add i32 %%17, %%28, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_329_count);
  llvm_cbe_tmp__145 = (unsigned int )((unsigned int )(llvm_cbe_tmp__101&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__111&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__145&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = getelementptr inbounds i16* %%Layer2_Neurons_CPU_hls, i32 %%62, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_330_count);
  llvm_cbe_tmp__146 = (signed short *)(&llvm_cbe_Layer2_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__145))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__145));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = load i16* %%63, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_331_count);
  llvm_cbe_tmp__147 = (unsigned short )*llvm_cbe_tmp__146;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__147);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = zext i16 %%64 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_332_count);
  llvm_cbe_tmp__148 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__147&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__148);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = mul nsw i32 %%65, %%61, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_333_count);
  llvm_cbe_tmp__149 = (unsigned int )((unsigned int )(llvm_cbe_tmp__148&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__144&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__149&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = lshr i32 %%66, 8, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_334_count);
  llvm_cbe_tmp__150 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__149&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__150&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = trunc i32 %%67 to i16, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_335_count);
  llvm_cbe_tmp__151 = (unsigned short )((unsigned short )llvm_cbe_tmp__150&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__151);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = add nsw i32 %%24, 4, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_336_count);
  llvm_cbe_tmp__152 = (unsigned int )((unsigned int )(llvm_cbe_tmp__107&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__152&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%69, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_337_count);
  llvm_cbe_tmp__153 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__152))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__152));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = load i16* %%70, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_338_count);
  llvm_cbe_tmp__154 = (unsigned short )*llvm_cbe_tmp__153;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__154);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = zext i16 %%71 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_339_count);
  llvm_cbe_tmp__155 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__154&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__155);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = add i32 %%18, %%28, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_340_count);
  llvm_cbe_tmp__156 = (unsigned int )((unsigned int )(llvm_cbe_tmp__102&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__111&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__156&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds i16* %%Layer2_Neurons_CPU_hls, i32 %%73, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_341_count);
  llvm_cbe_tmp__157 = (signed short *)(&llvm_cbe_Layer2_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__156))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__156));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = load i16* %%74, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_342_count);
  llvm_cbe_tmp__158 = (unsigned short )*llvm_cbe_tmp__157;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = zext i16 %%75 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_343_count);
  llvm_cbe_tmp__159 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__158&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__159);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = mul nsw i32 %%76, %%72, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_344_count);
  llvm_cbe_tmp__160 = (unsigned int )((unsigned int )(llvm_cbe_tmp__159&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__155&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__160&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = lshr i32 %%77, 8, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_345_count);
  llvm_cbe_tmp__161 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__160&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__161&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = trunc i32 %%78 to i16, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_346_count);
  llvm_cbe_tmp__162 = (unsigned short )((unsigned short )llvm_cbe_tmp__161&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__162);
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = add nsw i32 %%24, 5, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_347_count);
  llvm_cbe_tmp__163 = (unsigned int )((unsigned int )(llvm_cbe_tmp__107&4294967295ull)) + ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__163&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = getelementptr inbounds i16* %%Layer2_Weights_CPU_hls, i32 %%80, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_348_count);
  llvm_cbe_tmp__164 = (signed short *)(&llvm_cbe_Layer2_Weights_CPU_hls[(((signed int )llvm_cbe_tmp__163))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__163));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = load i16* %%81, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_349_count);
  llvm_cbe_tmp__165 = (unsigned short )*llvm_cbe_tmp__164;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__165);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = zext i16 %%82 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_350_count);
  llvm_cbe_tmp__166 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__165&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__166);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = add i32 %%19, %%28, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_351_count);
  llvm_cbe_tmp__167 = (unsigned int )((unsigned int )(llvm_cbe_tmp__103&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__111&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__167&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = getelementptr inbounds i16* %%Layer2_Neurons_CPU_hls, i32 %%84, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_352_count);
  llvm_cbe_tmp__168 = (signed short *)(&llvm_cbe_Layer2_Neurons_CPU_hls[(((signed int )llvm_cbe_tmp__167))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__167));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = load i16* %%85, align 2, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_353_count);
  llvm_cbe_tmp__169 = (unsigned short )*llvm_cbe_tmp__168;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__169);
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = zext i16 %%86 to i32, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_354_count);
  llvm_cbe_tmp__170 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__169&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__170);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = mul nsw i32 %%87, %%83, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_355_count);
  llvm_cbe_tmp__171 = (unsigned int )((unsigned int )(llvm_cbe_tmp__170&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__166&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__171&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = lshr i32 %%88, 8, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_356_count);
  llvm_cbe_tmp__172 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__171&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__172&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = trunc i32 %%89 to i16, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_357_count);
  llvm_cbe_tmp__173 = (unsigned short )((unsigned short )llvm_cbe_tmp__172&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__173);
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = add i16 %%35, %%21, !dbg !2 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_358_count);
  llvm_cbe_tmp__174 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__118&65535ull)) + ((unsigned short )(llvm_cbe_tmp__104&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__174&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = add i16 %%91, %%46, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_359_count);
  llvm_cbe_tmp__175 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__174&65535ull)) + ((unsigned short )(llvm_cbe_tmp__129&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__175&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = add i16 %%92, %%57, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_360_count);
  llvm_cbe_tmp__176 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__175&65535ull)) + ((unsigned short )(llvm_cbe_tmp__140&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__176&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = add i16 %%93, %%68, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_361_count);
  llvm_cbe_tmp__177 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__176&65535ull)) + ((unsigned short )(llvm_cbe_tmp__151&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__177&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = add i16 %%94, %%79, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_362_count);
  llvm_cbe_tmp__178 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__177&65535ull)) + ((unsigned short )(llvm_cbe_tmp__162&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__178&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = add i16 %%95, %%90, !dbg !3 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_363_count);
  llvm_cbe_tmp__179 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__178&65535ull)) + ((unsigned short )(llvm_cbe_tmp__173&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__179&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = add nsw i32 %%storemerge45, 1, !dbg !6 for 0x%I64xth hint within @calculateLayer3  --> \n", ++aesl_llvm_cbe_373_count);
  llvm_cbe_tmp__180 = (unsigned int )((unsigned int )(llvm_cbe_storemerge45&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__180&4294967295ull)));
  if (((llvm_cbe_tmp__180&4294967295U) == (5u&4294967295U))) {
    goto llvm_cbe_tmp__200;
  } else {
    llvm_cbe_storemerge45__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__180;   /* for PHI node */
    llvm_cbe_tmp__104__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__179;   /* for PHI node */
    goto llvm_cbe_tmp__199;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader8' */
  } while (1); /* end of syntactic loop '.preheader10' */
llvm_cbe_tmp__195:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @calculateLayer3}\n");
  return;
}

