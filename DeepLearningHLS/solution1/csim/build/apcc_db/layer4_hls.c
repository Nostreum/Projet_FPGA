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

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void calculateLayer4(signed short *llvm_cbe_Layer3_Neurons_CPU_hls, signed short *llvm_cbe_Layer3_Weights_CPU_hls, signed short *llvm_cbe_Layer4_Neurons_CPU_hls);


/* Global Variable Definitions and Initialization */
static  char aesl_internal_str[13] = "LAYER 4 HLS ";


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
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
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
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @aesl_internal_str, i32 0, i32 0)), !dbg !3 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_puts_count);
   /*tail*/ puts(( char *)((&aesl_internal_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 13
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
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
printf("\n  %%71 = add nsw i32 %%storemerge27, 1, !dbg !4 for 0x%I64xth hint within @calculateLayer4  --> \n", ++aesl_llvm_cbe_148_count);
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

