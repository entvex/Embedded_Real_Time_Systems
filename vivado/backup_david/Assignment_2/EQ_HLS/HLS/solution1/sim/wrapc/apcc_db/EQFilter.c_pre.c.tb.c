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
extern double double_Pi;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
float jmax(float llvm_cbe_a, float llvm_cbe_b);
void IIR_reset(void);
void IIR_create(void);
void IIR_process_F(float *llvm_cbe_samples, signed int llvm_cbe_numSamples);
void IIR_process_S(signed short *llvm_cbe_samples, signed short *llvm_cbe_output, signed short llvm_cbe_numSamples);
void IIR_makeLowPass(float llvm_cbe_sampleRate, float llvm_cbe_frequency);
void IIR_setCoefficients(float llvm_cbe_b0, float llvm_cbe_b1, float llvm_cbe_b2, float llvm_cbe_a0, float llvm_cbe_a1, float llvm_cbe_a2);
void IIR_makeHighPass(float llvm_cbe_sampleRate, float llvm_cbe_frequency);
void IIR_makeNotch(float llvm_cbe_sampleRate, float llvm_cbe_cutOffFrequency, float llvm_cbe_r);
void IIR_makeLowShelf(float llvm_cbe_sampleRate, float llvm_cbe_cutOffFrequency, float llvm_cbe_Q, float llvm_cbe_gainFactor);
void IIR_makeHighShelf(float llvm_cbe_sampleRate, float llvm_cbe_cutOffFrequency, float llvm_cbe_Q, float llvm_cbe_gainFactor);
void IIR_makePeakEQ(float llvm_cbe_sampleRate, float llvm_cbe_centreFrequency, float llvm_cbe_Q, float llvm_cbe_gainFactor);
float IIR_getCoeffFloat(signed int llvm_cbe_idx);
signed int IIR_getCoeffFixed(signed int llvm_cbe_idx);


/* Global Variable Definitions and Initialization */
double double_Pi = 0x1.921fb54442d18p1;
static unsigned int aesl_internal_x1_fix;
static float aesl_internal_x1_float;
static float aesl_internal_x2_float;
static unsigned int aesl_internal_x2_fix;
static float aesl_internal_coefficients[6];
static float aesl_internal_y1_float;
static unsigned int aesl_internal_y1_fix;
static float aesl_internal_y2_float;
static unsigned int aesl_internal_y2_fix;
static signed int aesl_internal_coef_fixed[6];


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

float jmax(float llvm_cbe_a, float llvm_cbe_b) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  float llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @jmax\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = select i1 %%1, float %%b, float %%a, !dbg !12 for 0x%I64xth hint within @jmax  --> \n", ++aesl_llvm_cbe_8_count);
  llvm_cbe_tmp__1 = (float )(((llvm_fcmp_olt(llvm_cbe_a, llvm_cbe_b))) ? ((float )llvm_cbe_b) : ((float )llvm_cbe_a));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__1, *(int*)(&llvm_cbe_tmp__1));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @jmax}\n");
  return llvm_cbe_tmp__1;
}


void IIR_reset(void) {
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_reset\n");
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* @aesl_internal_x1_float, align 4, !dbg !12 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_10_count);
  *(&aesl_internal_x1_float) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* @aesl_internal_x1_fix, align 4, !dbg !12 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_11_count);
  *(&aesl_internal_x1_fix) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* @aesl_internal_x2_float, align 4, !dbg !12 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_12_count);
  *(&aesl_internal_x2_float) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* @aesl_internal_x2_fix, align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_13_count);
  *(&aesl_internal_x2_fix) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* @aesl_internal_y1_float, align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_14_count);
  *(&aesl_internal_y1_float) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* @aesl_internal_y1_fix, align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_15_count);
  *(&aesl_internal_y1_fix) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* @aesl_internal_y2_float, align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_16_count);
  *(&aesl_internal_y2_float) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* @aesl_internal_y2_fix, align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_17_count);
  *(&aesl_internal_y2_fix) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 1), align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_28_count);
  *((&aesl_internal_coef_fixed[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 1), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_29_count);
  *((&aesl_internal_coefficients[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 2), align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_35_count);
  *((&aesl_internal_coef_fixed[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 2), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_36_count);
  *((&aesl_internal_coefficients[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 3), align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_42_count);
  *((&aesl_internal_coef_fixed[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 3), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_43_count);
  *((&aesl_internal_coefficients[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 4), align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_49_count);
  *((&aesl_internal_coef_fixed[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 4), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_50_count);
  *((&aesl_internal_coefficients[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 5), align 4, !dbg !13 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_56_count);
  *((&aesl_internal_coef_fixed[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 5), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_57_count);
  *((&aesl_internal_coefficients[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.000000e+00, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 0), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_63_count);
  *((&aesl_internal_coefficients[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 0x1p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x1p0);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 32767, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 0), align 4, !dbg !14 for 0x%I64xth hint within @IIR_reset  --> \n", ++aesl_llvm_cbe_64_count);
  *((&aesl_internal_coef_fixed[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = 32767u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 32767u);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_reset}\n");
  return;
}


void IIR_create(void) {
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_create\n");
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_reset(), !dbg !12 for 0x%I64xth hint within @IIR_create  --> \n", ++aesl_llvm_cbe_66_count);
   /*tail*/ IIR_reset();
if (AESL_DEBUG_TRACE) {
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_create}\n");
  return;
}


void IIR_process_F(float *llvm_cbe_samples, signed int llvm_cbe_numSamples) {
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  float *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  float llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  float llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  float llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  float llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  float llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  float llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  float llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  float llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  float llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  float llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  float llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  float llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  float llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  float llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  float llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  float llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  float llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  float llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  double llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  float llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_process_F\n");
  if ((((signed int )llvm_cbe_numSamples) > ((signed int )0u))) {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ %%26, %%.lr.ph ], [ 0, %%0  for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds float* %%samples, i32 %%storemerge1, !dbg !12 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__2 = (float *)(&llvm_cbe_samples[(((signed int )llvm_cbe_storemerge1))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",((signed int )llvm_cbe_storemerge1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load float* %%2, align 4, !dbg !12 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__3 = (float )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__3, *(int*)(&llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 0), align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__4 = (float )*((&aesl_internal_coefficients[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__4, *(int*)(&llvm_cbe_tmp__4));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fmul float %%4, %%3, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__5 = (float )((float )(llvm_cbe_tmp__4 * llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__5, *(int*)(&llvm_cbe_tmp__5));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 1), align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__6 = (float )*((&aesl_internal_coefficients[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__6, *(int*)(&llvm_cbe_tmp__6));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load float* @aesl_internal_x1_float, align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__7 = (float )*(&aesl_internal_x1_float);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__7, *(int*)(&llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fmul float %%6, %%7, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__8 = (float )((float )(llvm_cbe_tmp__6 * llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__8, *(int*)(&llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fadd float %%5, %%8, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__9 = (float )((float )(llvm_cbe_tmp__5 + llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__9, *(int*)(&llvm_cbe_tmp__9));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 2), align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__10 = (float )*((&aesl_internal_coefficients[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__10, *(int*)(&llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load float* @aesl_internal_x2_float, align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__11 = (float )*(&aesl_internal_x2_float);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__11, *(int*)(&llvm_cbe_tmp__11));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fmul float %%10, %%11, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__12 = (float )((float )(llvm_cbe_tmp__10 * llvm_cbe_tmp__11));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__12, *(int*)(&llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fadd float %%9, %%12, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__13 = (float )((float )(llvm_cbe_tmp__9 + llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__13, *(int*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 4), align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__14 = (float )*((&aesl_internal_coefficients[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__14, *(int*)(&llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load float* @aesl_internal_y1_float, align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__15 = (float )*(&aesl_internal_y1_float);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__15, *(int*)(&llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fmul float %%14, %%15, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__16 = (float )((float )(llvm_cbe_tmp__14 * llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__16, *(int*)(&llvm_cbe_tmp__16));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fsub float %%13, %%16, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__17 = (float )((float )(llvm_cbe_tmp__13 - llvm_cbe_tmp__16));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__17, *(int*)(&llvm_cbe_tmp__17));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 5), align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__18 = (float )*((&aesl_internal_coefficients[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__18, *(int*)(&llvm_cbe_tmp__18));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load float* @aesl_internal_y2_float, align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__19 = (float )*(&aesl_internal_y2_float);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__19, *(int*)(&llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fmul float %%18, %%19, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__20 = (float )((float )(llvm_cbe_tmp__18 * llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fsub float %%17, %%20, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__21 = (float )((float )(llvm_cbe_tmp__17 - llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__21, *(int*)(&llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fpext float %%21 to double, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__22 = (double )((double )llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__22, *(long long*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%23, %%24, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )(((llvm_fcmp_olt(llvm_cbe_tmp__22, -0x1.5798ee2308c3ap-27)) | (llvm_fcmp_ogt(llvm_cbe_tmp__22, 0x1.5798ee2308c3ap-27)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = select i1 %%or.cond, float %%21, float 0.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__23 = (float )((llvm_cbe_or_2e_cond) ? ((float )llvm_cbe_tmp__21) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__23, *(int*)(&llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n  store float %%7, float* @aesl_internal_x2_float, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_118_count);
  *(&aesl_internal_x2_float) = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%3, float* @aesl_internal_x1_float, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_119_count);
  *(&aesl_internal_x1_float) = llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%15, float* @aesl_internal_y2_float, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_120_count);
  *(&aesl_internal_y2_float) = llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%25, float* @aesl_internal_y1_float, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_121_count);
  *(&aesl_internal_y1_float) = llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%25, float* %%2, align 4, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_122_count);
  *llvm_cbe_tmp__2 = llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge1, 1, !dbg !13 for 0x%I64xth hint within @IIR_process_F  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
  if (((llvm_cbe_tmp__24&4294967295U) == (llvm_cbe_numSamples&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_process_F}\n");
  return;
}


void IIR_process_S(signed short *llvm_cbe_samples, signed short *llvm_cbe_output, signed short llvm_cbe_numSamples) {
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned short llvm_cbe_storemerge2;
  unsigned short llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  signed short *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned short llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  unsigned int llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  unsigned short llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  signed short *llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  unsigned short llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_process_S\n");
  if ((((signed short )llvm_cbe_numSamples) > ((signed short )((unsigned short )0)))) {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i16 [ %%27, %%.lr.ph ], [ 0, %%0  for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned short )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",llvm_cbe_tmp__50);
printf("\n = 0x%X",((unsigned short )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i16 %%storemerge2 to i32, !dbg !12 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__25 = (unsigned int )((signed int )(signed short )llvm_cbe_storemerge2);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i16* %%samples, i32 %%2, !dbg !12 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__26 = (signed short *)(&llvm_cbe_samples[(((signed int )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i16* %%3, align 2, !dbg !12 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__27 = (unsigned short )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i16 %%4 to i32, !dbg !12 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__28 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 0), align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_151_count);
  llvm_cbe_tmp__29 = (unsigned int )*((&aesl_internal_coef_fixed[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = mul nsw i32 %%6, %%5, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_tmp__29&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__28&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 1), align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__31 = (unsigned int )*((&aesl_internal_coef_fixed[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i32* @aesl_internal_x1_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__32 = (unsigned int )*(&aesl_internal_x1_fix);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = mul nsw i32 %%9, %%8, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(llvm_cbe_tmp__32&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__31&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__33&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 2), align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__34 = (unsigned int )*((&aesl_internal_coef_fixed[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* @aesl_internal_x2_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__35 = (unsigned int )*(&aesl_internal_x2_fix);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = mul nsw i32 %%12, %%11, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__36 = (unsigned int )((unsigned int )(llvm_cbe_tmp__35&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__34&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__36&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 4), align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__37 = (unsigned int )*((&aesl_internal_coef_fixed[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i32* @aesl_internal_y1_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__38 = (unsigned int )*(&aesl_internal_y1_fix);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = mul nsw i32 %%15, %%14, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_161_count);
  llvm_cbe_tmp__39 = (unsigned int )((unsigned int )(llvm_cbe_tmp__38&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__37&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__39&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 5), align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__40 = (unsigned int )*((&aesl_internal_coef_fixed[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 6
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i32* @aesl_internal_y2_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_163_count);
  llvm_cbe_tmp__41 = (unsigned int )*(&aesl_internal_y2_fix);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = mul nsw i32 %%18, %%17, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__42 = (unsigned int )((unsigned int )(llvm_cbe_tmp__41&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__40&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__42&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add i32 %%10, %%7, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__43 = (unsigned int )((unsigned int )(llvm_cbe_tmp__33&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__30&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__43&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add i32 %%20, %%13, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__44 = (unsigned int )((unsigned int )(llvm_cbe_tmp__43&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__36&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__44&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = sub i32 %%21, %%16, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__39&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = sub i32 %%22, %%19, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_tmp__45&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__42&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = ashr i32 %%23, 15, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__47 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__46) >> ((signed int )15u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__47));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%9, i32* @aesl_internal_x2_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_175_count);
  *(&aesl_internal_x2_fix) = llvm_cbe_tmp__32;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%5, i32* @aesl_internal_x1_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_176_count);
  *(&aesl_internal_x1_fix) = llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%15, i32* @aesl_internal_y2_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_177_count);
  *(&aesl_internal_y2_fix) = llvm_cbe_tmp__38;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%24, i32* @aesl_internal_y1_fix, align 4, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_178_count);
  *(&aesl_internal_y1_fix) = llvm_cbe_tmp__47;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = trunc i32 %%24 to i16, !dbg !13 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__48 = (unsigned short )((unsigned short )llvm_cbe_tmp__47&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds i16* %%output, i32 %%2, !dbg !13 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__49 = (signed short *)(&llvm_cbe_output[(((signed int )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%25, i16* %%26, align 2, !dbg !13 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_181_count);
  *llvm_cbe_tmp__49 = llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add i16 %%storemerge2, 1, !dbg !14 for 0x%I64xth hint within @IIR_process_S  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__50 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge2&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__50&65535ull)));
  if (((llvm_cbe_tmp__50&65535U) == (llvm_cbe_numSamples&65535U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__50;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_process_S}\n");
  return;
}


void IIR_makeLowPass(float llvm_cbe_sampleRate, float llvm_cbe_frequency) {
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  double llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  double llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  double llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  double llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  double llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  double llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  float llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  float llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  double llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  double llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  double llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  double llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  double llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  double llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  float llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  float llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  double llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  double llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  double llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  double llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  float llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  double llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  double llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  double llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  float llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_makeLowPass\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = fpext float %%frequency to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_193_count);
  llvm_cbe_tmp__51 = (double )((double )llvm_cbe_frequency);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__51, *(long long*)(&llvm_cbe_tmp__51));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fmul double %%1, 0x400921FB54442D18, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__52 = (double )llvm_cbe_tmp__51 * 0x1.921fb54442d18p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__52, *(long long*)(&llvm_cbe_tmp__52));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fpext float %%sampleRate to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_196_count);
  llvm_cbe_tmp__53 = (double )((double )llvm_cbe_sampleRate);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__53, *(long long*)(&llvm_cbe_tmp__53));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fdiv double %%2, %%3, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_197_count);
  llvm_cbe_tmp__54 = (double )llvm_cbe_tmp__52 / llvm_cbe_tmp__53;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__54, *(long long*)(&llvm_cbe_tmp__54));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call double @tan(double %%4) nounwind, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_198_count);
  llvm_cbe_tmp__55 = (double ) /*tail*/ tan(llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__54, *(long long*)(&llvm_cbe_tmp__54));
printf("\nReturn  = %lf",llvm_cbe_tmp__55);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fdiv double 1.000000e+00, %%5, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_199_count);
  llvm_cbe_tmp__56 = (double )0x1p0 / llvm_cbe_tmp__55;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__56, *(long long*)(&llvm_cbe_tmp__56));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fptrunc double %%6 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_200_count);
  llvm_cbe_tmp__57 = (float )((float )llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__57, *(int*)(&llvm_cbe_tmp__57));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fmul float %%7, %%7, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_206_count);
  llvm_cbe_tmp__58 = (float )((float )(llvm_cbe_tmp__57 * llvm_cbe_tmp__57));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__58, *(int*)(&llvm_cbe_tmp__58));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fpext float %%7 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_211_count);
  llvm_cbe_tmp__59 = (double )((double )llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__59, *(long long*)(&llvm_cbe_tmp__59));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fmul double %%9, 0x3FF6A09E667F3BCD, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_212_count);
  llvm_cbe_tmp__60 = (double )llvm_cbe_tmp__59 * 0x1.6a09e667f3bcdp0;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__60, *(long long*)(&llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fadd double %%10, 1.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_213_count);
  llvm_cbe_tmp__61 = (double )llvm_cbe_tmp__60 + 0x1p0;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__61, *(long long*)(&llvm_cbe_tmp__61));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fpext float %%8 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__62 = (double )((double )llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__62, *(long long*)(&llvm_cbe_tmp__62));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fadd double %%11, %%12, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_215_count);
  llvm_cbe_tmp__63 = (double )llvm_cbe_tmp__61 + llvm_cbe_tmp__62;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__63, *(long long*)(&llvm_cbe_tmp__63));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fdiv double 1.000000e+00, %%13, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_216_count);
  llvm_cbe_tmp__64 = (double )0x1p0 / llvm_cbe_tmp__63;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__64, *(long long*)(&llvm_cbe_tmp__64));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fptrunc double %%14 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_217_count);
  llvm_cbe_tmp__65 = (float )((float )llvm_cbe_tmp__64);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__65, *(int*)(&llvm_cbe_tmp__65));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fmul float %%15, 2.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_224_count);
  llvm_cbe_tmp__66 = (float )((float )(llvm_cbe_tmp__65 * 0x1p1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__66, *(int*)(&llvm_cbe_tmp__66));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fpext float %%15 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__67 = (double )((double )llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__67, *(long long*)(&llvm_cbe_tmp__67));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fmul double %%17, 2.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__68 = (double )llvm_cbe_tmp__67 * 0x1p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__68, *(long long*)(&llvm_cbe_tmp__68));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = fsub double 1.000000e+00, %%12, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__69 = (double )0x1p0 - llvm_cbe_tmp__62;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__69, *(long long*)(&llvm_cbe_tmp__69));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fmul double %%18, %%19, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__70 = (double )llvm_cbe_tmp__68 * llvm_cbe_tmp__69;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__70, *(long long*)(&llvm_cbe_tmp__70));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fptrunc double %%20 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__71 = (float )((float )llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__71, *(int*)(&llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fsub double 1.000000e+00, %%10, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__72 = (double )0x1p0 - llvm_cbe_tmp__60;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__72, *(long long*)(&llvm_cbe_tmp__72));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = fadd double %%22, %%12, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_231_count);
  llvm_cbe_tmp__73 = (double )llvm_cbe_tmp__72 + llvm_cbe_tmp__62;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__73, *(long long*)(&llvm_cbe_tmp__73));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fmul double %%17, %%23, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_232_count);
  llvm_cbe_tmp__74 = (double )llvm_cbe_tmp__67 * llvm_cbe_tmp__73;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__74, *(long long*)(&llvm_cbe_tmp__74));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = fptrunc double %%24 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_233_count);
  llvm_cbe_tmp__75 = (float )((float )llvm_cbe_tmp__74);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_setCoefficients(float %%15, float %%16, float %%15, float 1.000000e+00, float %%21, float %%25), !dbg !13 for 0x%I64xth hint within @IIR_makeLowPass  --> \n", ++aesl_llvm_cbe_234_count);
   /*tail*/ IIR_setCoefficients(llvm_cbe_tmp__65, llvm_cbe_tmp__66, llvm_cbe_tmp__65, 0x1p0, llvm_cbe_tmp__71, llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__65, *(int*)(&llvm_cbe_tmp__65));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__66, *(int*)(&llvm_cbe_tmp__66));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__65, *(int*)(&llvm_cbe_tmp__65));
printf("\nArgument  = %f",0x1p0);
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__71, *(int*)(&llvm_cbe_tmp__71));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_makeLowPass}\n");
  return;
}


void IIR_setCoefficients(float llvm_cbe_b0, float llvm_cbe_b1, float llvm_cbe_b2, float llvm_cbe_a0, float llvm_cbe_a1, float llvm_cbe_a2) {
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
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
  float llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  float llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  float llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  float llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  float llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  float llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  float llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  unsigned int llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  float llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  unsigned int llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  float llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  float llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  float llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  unsigned int llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  float llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_setCoefficients\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = fdiv float 1.000000e+00, %%a0, !dbg !14 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_254_count);
  llvm_cbe_tmp__76 = (float )((float )(0x1p0 / llvm_cbe_a0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__76, *(int*)(&llvm_cbe_tmp__76));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fmul float %%1, %%b0, !dbg !12 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__77 = (float )((float )(llvm_cbe_tmp__76 * llvm_cbe_b0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__77, *(int*)(&llvm_cbe_tmp__77));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fmul float %%1, %%b1, !dbg !13 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__78 = (float )((float )(llvm_cbe_tmp__76 * llvm_cbe_b1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__78, *(int*)(&llvm_cbe_tmp__78));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fmul float %%1, %%b2, !dbg !13 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_269_count);
  llvm_cbe_tmp__79 = (float )((float )(llvm_cbe_tmp__76 * llvm_cbe_b2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__79, *(int*)(&llvm_cbe_tmp__79));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fmul float %%1, %%a1, !dbg !14 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_273_count);
  llvm_cbe_tmp__80 = (float )((float )(llvm_cbe_tmp__76 * llvm_cbe_a1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__80, *(int*)(&llvm_cbe_tmp__80));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fmul float %%1, %%a2, !dbg !14 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_277_count);
  llvm_cbe_tmp__81 = (float )((float )(llvm_cbe_tmp__76 * llvm_cbe_a2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__81, *(int*)(&llvm_cbe_tmp__81));
if (AESL_DEBUG_TRACE)
printf("\n  store float %%2, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 0), align 4, !dbg !13 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_281_count);
  *((&aesl_internal_coefficients[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__77;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__77);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%3, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 1), align 4, !dbg !13 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_282_count);
  *((&aesl_internal_coefficients[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__78);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%4, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 2), align 4, !dbg !13 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_283_count);
  *((&aesl_internal_coefficients[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__79;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%a0, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 3), align 4, !dbg !14 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_284_count);
  *((&aesl_internal_coefficients[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_a0;
if (AESL_DEBUG_TRACE)
printf("\na0 = %f\n", llvm_cbe_a0);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%5, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 4), align 4, !dbg !14 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_285_count);
  *((&aesl_internal_coefficients[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__80;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__80);
if (AESL_DEBUG_TRACE)
printf("\n  store float %%6, float* getelementptr inbounds ([6 x float]* @aesl_internal_coefficients, i32 0, i32 5), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_286_count);
  *((&aesl_internal_coefficients[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__81;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__81);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fmul float %%2, 3.276700e+04, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_292_count);
  llvm_cbe_tmp__82 = (float )((float )(llvm_cbe_tmp__77 * 0x1.fffcp14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__82, *(int*)(&llvm_cbe_tmp__82));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fptosi float %%7 to i32, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_293_count);
  llvm_cbe_tmp__83 = (unsigned int )((signed int )llvm_cbe_tmp__82&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__83);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%8, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 0), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_294_count);
  *((&aesl_internal_coef_fixed[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__83;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__83);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fmul float %%3, 3.276700e+04, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_300_count);
  llvm_cbe_tmp__84 = (float )((float )(llvm_cbe_tmp__78 * 0x1.fffcp14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__84, *(int*)(&llvm_cbe_tmp__84));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fptosi float %%9 to i32, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_301_count);
  llvm_cbe_tmp__85 = (unsigned int )((signed int )llvm_cbe_tmp__84&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%10, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 1), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_302_count);
  *((&aesl_internal_coef_fixed[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__85;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fmul float %%4, 3.276700e+04, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_308_count);
  llvm_cbe_tmp__86 = (float )((float )(llvm_cbe_tmp__79 * 0x1.fffcp14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__86, *(int*)(&llvm_cbe_tmp__86));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fptosi float %%11 to i32, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_309_count);
  llvm_cbe_tmp__87 = (unsigned int )((signed int )llvm_cbe_tmp__86&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%12, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 2), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_310_count);
  *((&aesl_internal_coef_fixed[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__87;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fmul float %%a0, 3.276700e+04, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__88 = (float )((float )(llvm_cbe_a0 * 0x1.fffcp14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__88, *(int*)(&llvm_cbe_tmp__88));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fptosi float %%13 to i32, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__89 = (unsigned int )((signed int )llvm_cbe_tmp__88&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%14, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 3), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_318_count);
  *((&aesl_internal_coef_fixed[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__89;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul float %%5, 3.276700e+04, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_324_count);
  llvm_cbe_tmp__90 = (float )((float )(llvm_cbe_tmp__80 * 0x1.fffcp14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__90, *(int*)(&llvm_cbe_tmp__90));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fptosi float %%15 to i32, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_325_count);
  llvm_cbe_tmp__91 = (unsigned int )((signed int )llvm_cbe_tmp__90&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%16, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 4), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_326_count);
  *((&aesl_internal_coef_fixed[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__91;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fmul float %%6, 3.276700e+04, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_332_count);
  llvm_cbe_tmp__92 = (float )((float )(llvm_cbe_tmp__81 * 0x1.fffcp14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__92, *(int*)(&llvm_cbe_tmp__92));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fptosi float %%17 to i32, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_333_count);
  llvm_cbe_tmp__93 = (unsigned int )((signed int )llvm_cbe_tmp__92&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%18, i32* getelementptr inbounds ([6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 5), align 4, !dbg !15 for 0x%I64xth hint within @IIR_setCoefficients  --> \n", ++aesl_llvm_cbe_334_count);
  *((&aesl_internal_coef_fixed[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 6
#endif
])) = llvm_cbe_tmp__93;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_setCoefficients}\n");
  return;
}


void IIR_makeHighPass(float llvm_cbe_sampleRate, float llvm_cbe_frequency) {
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  double llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  double llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  double llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  double llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  double llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  float llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  float llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  double llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  double llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  double llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  double llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  double llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  double llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  float llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  float llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  double llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  double llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  double llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  double llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  float llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  double llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  double llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  double llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  float llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_makeHighPass\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = fpext float %%frequency to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_344_count);
  llvm_cbe_tmp__94 = (double )((double )llvm_cbe_frequency);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__94, *(long long*)(&llvm_cbe_tmp__94));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fmul double %%1, 0x400921FB54442D18, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_345_count);
  llvm_cbe_tmp__95 = (double )llvm_cbe_tmp__94 * 0x1.921fb54442d18p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__95, *(long long*)(&llvm_cbe_tmp__95));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fpext float %%sampleRate to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_347_count);
  llvm_cbe_tmp__96 = (double )((double )llvm_cbe_sampleRate);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__96, *(long long*)(&llvm_cbe_tmp__96));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fdiv double %%2, %%3, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_348_count);
  llvm_cbe_tmp__97 = (double )llvm_cbe_tmp__95 / llvm_cbe_tmp__96;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__97, *(long long*)(&llvm_cbe_tmp__97));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call double @tan(double %%4) nounwind, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_349_count);
  llvm_cbe_tmp__98 = (double ) /*tail*/ tan(llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__97, *(long long*)(&llvm_cbe_tmp__97));
printf("\nReturn  = %lf",llvm_cbe_tmp__98);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fptrunc double %%5 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_350_count);
  llvm_cbe_tmp__99 = (float )((float )llvm_cbe_tmp__98);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__99, *(int*)(&llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fmul float %%6, %%6, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_356_count);
  llvm_cbe_tmp__100 = (float )((float )(llvm_cbe_tmp__99 * llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__100, *(int*)(&llvm_cbe_tmp__100));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fpext float %%6 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_361_count);
  llvm_cbe_tmp__101 = (double )((double )llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__101, *(long long*)(&llvm_cbe_tmp__101));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fmul double %%8, 0x3FF6A09E667F3BCD, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_362_count);
  llvm_cbe_tmp__102 = (double )llvm_cbe_tmp__101 * 0x1.6a09e667f3bcdp0;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__102, *(long long*)(&llvm_cbe_tmp__102));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fadd double %%9, 1.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_363_count);
  llvm_cbe_tmp__103 = (double )llvm_cbe_tmp__102 + 0x1p0;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__103, *(long long*)(&llvm_cbe_tmp__103));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fpext float %%7 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_364_count);
  llvm_cbe_tmp__104 = (double )((double )llvm_cbe_tmp__100);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__104, *(long long*)(&llvm_cbe_tmp__104));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fadd double %%10, %%11, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_365_count);
  llvm_cbe_tmp__105 = (double )llvm_cbe_tmp__103 + llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__105, *(long long*)(&llvm_cbe_tmp__105));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fdiv double 1.000000e+00, %%12, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_366_count);
  llvm_cbe_tmp__106 = (double )0x1p0 / llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__106, *(long long*)(&llvm_cbe_tmp__106));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fptrunc double %%13 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_367_count);
  llvm_cbe_tmp__107 = (float )((float )llvm_cbe_tmp__106);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__107, *(int*)(&llvm_cbe_tmp__107));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul float %%14, -2.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_374_count);
  llvm_cbe_tmp__108 = (float )((float )(llvm_cbe_tmp__107 * -0x1p1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__108, *(int*)(&llvm_cbe_tmp__108));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fpext float %%14 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_375_count);
  llvm_cbe_tmp__109 = (double )((double )llvm_cbe_tmp__107);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__109, *(long long*)(&llvm_cbe_tmp__109));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fmul double %%16, 2.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_376_count);
  llvm_cbe_tmp__110 = (double )llvm_cbe_tmp__109 * 0x1p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__110, *(long long*)(&llvm_cbe_tmp__110));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fadd double %%11, -1.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__111 = (double )llvm_cbe_tmp__104 + -0x1p0;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__111, *(long long*)(&llvm_cbe_tmp__111));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = fmul double %%17, %%18, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_378_count);
  llvm_cbe_tmp__112 = (double )llvm_cbe_tmp__110 * llvm_cbe_tmp__111;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__112, *(long long*)(&llvm_cbe_tmp__112));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fptrunc double %%19 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_379_count);
  llvm_cbe_tmp__113 = (float )((float )llvm_cbe_tmp__112);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__113, *(int*)(&llvm_cbe_tmp__113));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fsub double 1.000000e+00, %%9, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_380_count);
  llvm_cbe_tmp__114 = (double )0x1p0 - llvm_cbe_tmp__102;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__114, *(long long*)(&llvm_cbe_tmp__114));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fadd double %%21, %%11, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_381_count);
  llvm_cbe_tmp__115 = (double )llvm_cbe_tmp__114 + llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__115, *(long long*)(&llvm_cbe_tmp__115));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = fmul double %%16, %%22, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_382_count);
  llvm_cbe_tmp__116 = (double )llvm_cbe_tmp__109 * llvm_cbe_tmp__115;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__116, *(long long*)(&llvm_cbe_tmp__116));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fptrunc double %%23 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_383_count);
  llvm_cbe_tmp__117 = (float )((float )llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__117, *(int*)(&llvm_cbe_tmp__117));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_setCoefficients(float %%14, float %%15, float %%14, float 1.000000e+00, float %%20, float %%24), !dbg !13 for 0x%I64xth hint within @IIR_makeHighPass  --> \n", ++aesl_llvm_cbe_384_count);
   /*tail*/ IIR_setCoefficients(llvm_cbe_tmp__107, llvm_cbe_tmp__108, llvm_cbe_tmp__107, 0x1p0, llvm_cbe_tmp__113, llvm_cbe_tmp__117);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__107, *(int*)(&llvm_cbe_tmp__107));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__108, *(int*)(&llvm_cbe_tmp__108));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__107, *(int*)(&llvm_cbe_tmp__107));
printf("\nArgument  = %f",0x1p0);
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__113, *(int*)(&llvm_cbe_tmp__113));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__117, *(int*)(&llvm_cbe_tmp__117));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_makeHighPass}\n");
  return;
}


void IIR_makeNotch(float llvm_cbe_sampleRate, float llvm_cbe_cutOffFrequency, float llvm_cbe_r) {
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  float llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  double llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  double llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  float llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  double llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  double llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  double llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  float llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  float llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  double llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  double llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  float llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  float llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_makeNotch\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = fdiv float %%cutOffFrequency, %%sampleRate, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_394_count);
  llvm_cbe_tmp__118 = (float )((float )(llvm_cbe_cutOffFrequency / llvm_cbe_sampleRate));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__118, *(int*)(&llvm_cbe_tmp__118));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fpext float %%1 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_395_count);
  llvm_cbe_tmp__119 = (double )((double )llvm_cbe_tmp__118);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__119, *(long long*)(&llvm_cbe_tmp__119));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fmul double %%2, 0x401921FB54442D18, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_396_count);
  llvm_cbe_tmp__120 = (double )llvm_cbe_tmp__119 * 0x1.921fb54442d18p2;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__120, *(long long*)(&llvm_cbe_tmp__120));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fptrunc double %%3 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_397_count);
  llvm_cbe_tmp__121 = (float )((float )llvm_cbe_tmp__120);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__121, *(int*)(&llvm_cbe_tmp__121));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fpext float %%4 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_401_count);
  llvm_cbe_tmp__122 = (double )((double )llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__122, *(long long*)(&llvm_cbe_tmp__122));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = tail call double @cos(double %%5) nounwind readnone, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_402_count);
  llvm_cbe_tmp__123 = (double ) /*tail*/ cos(llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__122, *(long long*)(&llvm_cbe_tmp__122));
printf("\nReturn  = %lf",llvm_cbe_tmp__123);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fmul double %%6, -2.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_403_count);
  llvm_cbe_tmp__124 = (double )llvm_cbe_tmp__123 * -0x1p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__124, *(long long*)(&llvm_cbe_tmp__124));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fptrunc double %%7 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_404_count);
  llvm_cbe_tmp__125 = (float )((float )llvm_cbe_tmp__124);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__125, *(int*)(&llvm_cbe_tmp__125));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fmul float %%r, -2.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_405_count);
  llvm_cbe_tmp__126 = (float )((float )(llvm_cbe_r * -0x1p1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__126, *(int*)(&llvm_cbe_tmp__126));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fpext float %%9 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_406_count);
  llvm_cbe_tmp__127 = (double )((double )llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__127, *(long long*)(&llvm_cbe_tmp__127));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fmul double %%10, %%6, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_407_count);
  llvm_cbe_tmp__128 = (double )llvm_cbe_tmp__127 * llvm_cbe_tmp__123;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__128, *(long long*)(&llvm_cbe_tmp__128));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fptrunc double %%11 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_408_count);
  llvm_cbe_tmp__129 = (float )((float )llvm_cbe_tmp__128);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__129, *(int*)(&llvm_cbe_tmp__129));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fmul float %%r, %%r, !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_409_count);
  llvm_cbe_tmp__130 = (float )((float )(llvm_cbe_r * llvm_cbe_r));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__130, *(int*)(&llvm_cbe_tmp__130));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_setCoefficients(float 1.000000e+00, float %%8, float 1.000000e+00, float 1.000000e+00, float %%12, float %%13), !dbg !13 for 0x%I64xth hint within @IIR_makeNotch  --> \n", ++aesl_llvm_cbe_410_count);
   /*tail*/ IIR_setCoefficients(0x1p0, llvm_cbe_tmp__125, 0x1p0, 0x1p0, llvm_cbe_tmp__129, llvm_cbe_tmp__130);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1p0);
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__125, *(int*)(&llvm_cbe_tmp__125));
printf("\nArgument  = %f",0x1p0);
printf("\nArgument  = %f",0x1p0);
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__129, *(int*)(&llvm_cbe_tmp__129));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__130, *(int*)(&llvm_cbe_tmp__130));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_makeNotch}\n");
  return;
}


void IIR_makeLowShelf(float llvm_cbe_sampleRate, float llvm_cbe_cutOffFrequency, float llvm_cbe_Q, float llvm_cbe_gainFactor) {
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  float llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  float llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  float llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  float llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  double llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  double llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  double llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  double llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  float llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  double llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  double llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  float llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  double llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  double llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  double llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  double llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  double llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  double llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  float llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  float llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  float llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  float llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  float llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  double llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  float llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  float llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  double llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  double llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  float llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  float llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  float llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  float llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  float llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
  float llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  float llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  float llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_makeLowShelf\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call float @jmax(float 0.000000e+00, float %%gainFactor), !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_420_count);
  llvm_cbe_tmp__131 = (float ) /*tail*/ jmax(0x0p0, llvm_cbe_gainFactor);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x0p0);
printf("\nArgument gainFactor = %f,  0x%x",llvm_cbe_gainFactor, *(int*)(&llvm_cbe_gainFactor));
printf("\nReturn  = %f",llvm_cbe_tmp__131);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fadd float %%1, -1.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_428_count);
  llvm_cbe_tmp__132 = (float )((float )(llvm_cbe_tmp__131 + -0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__132, *(int*)(&llvm_cbe_tmp__132));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fadd float %%1, 1.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_433_count);
  llvm_cbe_tmp__133 = (float )((float )(llvm_cbe_tmp__131 + 0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__133, *(int*)(&llvm_cbe_tmp__133));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call float @jmax(float %%cutOffFrequency, float 2.000000e+00), !dbg !12 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_441_count);
  llvm_cbe_tmp__134 = (float ) /*tail*/ jmax(llvm_cbe_cutOffFrequency, 0x1p1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument cutOffFrequency = %f,  0x%x",llvm_cbe_cutOffFrequency, *(int*)(&llvm_cbe_cutOffFrequency));
printf("\nArgument  = %f",0x1p1);
printf("\nReturn  = %f",llvm_cbe_tmp__134);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fpext float %%4 to double, !dbg !12 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_442_count);
  llvm_cbe_tmp__135 = (double )((double )llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__135, *(long long*)(&llvm_cbe_tmp__135));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fmul double %%5, 0x401921FB54442D18, !dbg !12 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_443_count);
  llvm_cbe_tmp__136 = (double )llvm_cbe_tmp__135 * 0x1.921fb54442d18p2;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__136, *(long long*)(&llvm_cbe_tmp__136));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fpext float %%sampleRate to double, !dbg !12 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_444_count);
  llvm_cbe_tmp__137 = (double )((double )llvm_cbe_sampleRate);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__137, *(long long*)(&llvm_cbe_tmp__137));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fdiv double %%6, %%7, !dbg !12 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_445_count);
  llvm_cbe_tmp__138 = (double )llvm_cbe_tmp__136 / llvm_cbe_tmp__137;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__138, *(long long*)(&llvm_cbe_tmp__138));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fptrunc double %%8 to float, !dbg !12 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_446_count);
  llvm_cbe_tmp__139 = (float )((float )llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__139, *(int*)(&llvm_cbe_tmp__139));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fpext float %%9 to double, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_449_count);
  llvm_cbe_tmp__140 = (double )((double )llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__140, *(long long*)(&llvm_cbe_tmp__140));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = tail call double @cos(double %%10) nounwind readnone, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_450_count);
  llvm_cbe_tmp__141 = (double ) /*tail*/ cos(llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__140, *(long long*)(&llvm_cbe_tmp__140));
printf("\nReturn  = %lf",llvm_cbe_tmp__141);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fptrunc double %%11 to float, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_451_count);
  llvm_cbe_tmp__142 = (float )((float )llvm_cbe_tmp__141);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__142, *(int*)(&llvm_cbe_tmp__142));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = tail call double @sin(double %%10) nounwind readnone, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_457_count);
  llvm_cbe_tmp__143 = (double ) /*tail*/ sin(llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__140, *(long long*)(&llvm_cbe_tmp__140));
printf("\nReturn  = %lf",llvm_cbe_tmp__143);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fpext float %%1 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_458_count);
  llvm_cbe_tmp__144 = (double )((double )llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__144, *(long long*)(&llvm_cbe_tmp__144));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = tail call double @sqrt(double %%14) nounwind readnone, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_459_count);
  llvm_cbe_tmp__145 = (double ) /*tail*/ sqrt(llvm_cbe_tmp__144);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__144, *(long long*)(&llvm_cbe_tmp__144));
printf("\nReturn  = %lf",llvm_cbe_tmp__145);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fmul double %%13, %%15, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_460_count);
  llvm_cbe_tmp__146 = (double )llvm_cbe_tmp__143 * llvm_cbe_tmp__145;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__146, *(long long*)(&llvm_cbe_tmp__146));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fpext float %%Q to double, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_461_count);
  llvm_cbe_tmp__147 = (double )((double )llvm_cbe_Q);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__147, *(long long*)(&llvm_cbe_tmp__147));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fdiv double %%16, %%17, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_462_count);
  llvm_cbe_tmp__148 = (double )llvm_cbe_tmp__146 / llvm_cbe_tmp__147;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__148, *(long long*)(&llvm_cbe_tmp__148));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = fptrunc double %%18 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_463_count);
  llvm_cbe_tmp__149 = (float )((float )llvm_cbe_tmp__148);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__149, *(int*)(&llvm_cbe_tmp__149));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fmul float %%2, %%12, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_469_count);
  llvm_cbe_tmp__150 = (float )((float )(llvm_cbe_tmp__132 * llvm_cbe_tmp__142));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__150, *(int*)(&llvm_cbe_tmp__150));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fsub float %%3, %%20, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_475_count);
  llvm_cbe_tmp__151 = (float )((float )(llvm_cbe_tmp__133 - llvm_cbe_tmp__150));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__151, *(int*)(&llvm_cbe_tmp__151));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fadd float %%21, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_476_count);
  llvm_cbe_tmp__152 = (float )((float )(llvm_cbe_tmp__151 + llvm_cbe_tmp__149));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__152, *(int*)(&llvm_cbe_tmp__152));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = fmul float %%1, %%22, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_477_count);
  llvm_cbe_tmp__153 = (float )((float )(llvm_cbe_tmp__131 * llvm_cbe_tmp__152));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__153, *(int*)(&llvm_cbe_tmp__153));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fmul double %%14, 2.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_478_count);
  llvm_cbe_tmp__154 = (double )llvm_cbe_tmp__144 * 0x1p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__154, *(long long*)(&llvm_cbe_tmp__154));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = fmul float %%3, %%12, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_479_count);
  llvm_cbe_tmp__155 = (float )((float )(llvm_cbe_tmp__133 * llvm_cbe_tmp__142));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__155, *(int*)(&llvm_cbe_tmp__155));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = fsub float %%2, %%25, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_480_count);
  llvm_cbe_tmp__156 = (float )((float )(llvm_cbe_tmp__132 - llvm_cbe_tmp__155));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__156, *(int*)(&llvm_cbe_tmp__156));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fpext float %%26 to double, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_481_count);
  llvm_cbe_tmp__157 = (double )((double )llvm_cbe_tmp__156);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__157, *(long long*)(&llvm_cbe_tmp__157));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fmul double %%24, %%27, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_482_count);
  llvm_cbe_tmp__158 = (double )llvm_cbe_tmp__154 * llvm_cbe_tmp__157;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__158, *(long long*)(&llvm_cbe_tmp__158));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = fptrunc double %%28 to float, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_483_count);
  llvm_cbe_tmp__159 = (float )((float )llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__159, *(int*)(&llvm_cbe_tmp__159));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = fsub float %%21, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_484_count);
  llvm_cbe_tmp__160 = (float )((float )(llvm_cbe_tmp__151 - llvm_cbe_tmp__149));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__160, *(int*)(&llvm_cbe_tmp__160));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fmul float %%1, %%30, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_485_count);
  llvm_cbe_tmp__161 = (float )((float )(llvm_cbe_tmp__131 * llvm_cbe_tmp__160));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__161, *(int*)(&llvm_cbe_tmp__161));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = fadd float %%3, %%20, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_486_count);
  llvm_cbe_tmp__162 = (float )((float )(llvm_cbe_tmp__133 + llvm_cbe_tmp__150));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__162, *(int*)(&llvm_cbe_tmp__162));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fadd float %%32, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_487_count);
  llvm_cbe_tmp__163 = (float )((float )(llvm_cbe_tmp__162 + llvm_cbe_tmp__149));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__163, *(int*)(&llvm_cbe_tmp__163));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = fadd float %%2, %%25, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_488_count);
  llvm_cbe_tmp__164 = (float )((float )(llvm_cbe_tmp__132 + llvm_cbe_tmp__155));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__164, *(int*)(&llvm_cbe_tmp__164));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = fmul float %%34, -2.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_489_count);
  llvm_cbe_tmp__165 = (float )((float )(llvm_cbe_tmp__164 * -0x1p1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__165, *(int*)(&llvm_cbe_tmp__165));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = fsub float %%32, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_490_count);
  llvm_cbe_tmp__166 = (float )((float )(llvm_cbe_tmp__162 - llvm_cbe_tmp__149));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__166, *(int*)(&llvm_cbe_tmp__166));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_setCoefficients(float %%23, float %%29, float %%31, float %%33, float %%35, float %%36), !dbg !14 for 0x%I64xth hint within @IIR_makeLowShelf  --> \n", ++aesl_llvm_cbe_491_count);
   /*tail*/ IIR_setCoefficients(llvm_cbe_tmp__153, llvm_cbe_tmp__159, llvm_cbe_tmp__161, llvm_cbe_tmp__163, llvm_cbe_tmp__165, llvm_cbe_tmp__166);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__153, *(int*)(&llvm_cbe_tmp__153));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__159, *(int*)(&llvm_cbe_tmp__159));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__161, *(int*)(&llvm_cbe_tmp__161));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__163, *(int*)(&llvm_cbe_tmp__163));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__165, *(int*)(&llvm_cbe_tmp__165));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__166, *(int*)(&llvm_cbe_tmp__166));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_makeLowShelf}\n");
  return;
}


void IIR_makeHighShelf(float llvm_cbe_sampleRate, float llvm_cbe_cutOffFrequency, float llvm_cbe_Q, float llvm_cbe_gainFactor) {
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  float llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  float llvm_cbe_tmp__168;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  float llvm_cbe_tmp__169;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  float llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  double llvm_cbe_tmp__171;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  double llvm_cbe_tmp__172;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  double llvm_cbe_tmp__173;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  double llvm_cbe_tmp__174;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  float llvm_cbe_tmp__175;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  double llvm_cbe_tmp__176;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  double llvm_cbe_tmp__177;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  float llvm_cbe_tmp__178;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
  double llvm_cbe_tmp__179;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  double llvm_cbe_tmp__180;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  double llvm_cbe_tmp__181;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  double llvm_cbe_tmp__182;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  double llvm_cbe_tmp__183;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;
  double llvm_cbe_tmp__184;
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  float llvm_cbe_tmp__185;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
  float llvm_cbe_tmp__186;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  float llvm_cbe_tmp__187;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  float llvm_cbe_tmp__188;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  float llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  double llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
  float llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  float llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
  double llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  double llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  float llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  float llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  float llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  float llvm_cbe_tmp__198;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  float llvm_cbe_tmp__199;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  float llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  float llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  float llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_makeHighShelf\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call float @jmax(float 0.000000e+00, float %%gainFactor), !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_501_count);
  llvm_cbe_tmp__167 = (float ) /*tail*/ jmax(0x0p0, llvm_cbe_gainFactor);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x0p0);
printf("\nArgument gainFactor = %f,  0x%x",llvm_cbe_gainFactor, *(int*)(&llvm_cbe_gainFactor));
printf("\nReturn  = %f",llvm_cbe_tmp__167);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fadd float %%1, -1.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_509_count);
  llvm_cbe_tmp__168 = (float )((float )(llvm_cbe_tmp__167 + -0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__168, *(int*)(&llvm_cbe_tmp__168));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fadd float %%1, 1.000000e+00, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_514_count);
  llvm_cbe_tmp__169 = (float )((float )(llvm_cbe_tmp__167 + 0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__169, *(int*)(&llvm_cbe_tmp__169));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call float @jmax(float %%cutOffFrequency, float 2.000000e+00), !dbg !12 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_522_count);
  llvm_cbe_tmp__170 = (float ) /*tail*/ jmax(llvm_cbe_cutOffFrequency, 0x1p1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument cutOffFrequency = %f,  0x%x",llvm_cbe_cutOffFrequency, *(int*)(&llvm_cbe_cutOffFrequency));
printf("\nArgument  = %f",0x1p1);
printf("\nReturn  = %f",llvm_cbe_tmp__170);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fpext float %%4 to double, !dbg !12 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_523_count);
  llvm_cbe_tmp__171 = (double )((double )llvm_cbe_tmp__170);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__171, *(long long*)(&llvm_cbe_tmp__171));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fmul double %%5, 0x401921FB54442D18, !dbg !12 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_524_count);
  llvm_cbe_tmp__172 = (double )llvm_cbe_tmp__171 * 0x1.921fb54442d18p2;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__172, *(long long*)(&llvm_cbe_tmp__172));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fpext float %%sampleRate to double, !dbg !12 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_525_count);
  llvm_cbe_tmp__173 = (double )((double )llvm_cbe_sampleRate);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__173, *(long long*)(&llvm_cbe_tmp__173));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fdiv double %%6, %%7, !dbg !12 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_526_count);
  llvm_cbe_tmp__174 = (double )llvm_cbe_tmp__172 / llvm_cbe_tmp__173;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__174, *(long long*)(&llvm_cbe_tmp__174));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fptrunc double %%8 to float, !dbg !12 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_527_count);
  llvm_cbe_tmp__175 = (float )((float )llvm_cbe_tmp__174);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__175, *(int*)(&llvm_cbe_tmp__175));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fpext float %%9 to double, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_530_count);
  llvm_cbe_tmp__176 = (double )((double )llvm_cbe_tmp__175);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__176, *(long long*)(&llvm_cbe_tmp__176));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = tail call double @cos(double %%10) nounwind readnone, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_531_count);
  llvm_cbe_tmp__177 = (double ) /*tail*/ cos(llvm_cbe_tmp__176);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__176, *(long long*)(&llvm_cbe_tmp__176));
printf("\nReturn  = %lf",llvm_cbe_tmp__177);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fptrunc double %%11 to float, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_532_count);
  llvm_cbe_tmp__178 = (float )((float )llvm_cbe_tmp__177);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__178, *(int*)(&llvm_cbe_tmp__178));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = tail call double @sin(double %%10) nounwind readnone, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_538_count);
  llvm_cbe_tmp__179 = (double ) /*tail*/ sin(llvm_cbe_tmp__176);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__176, *(long long*)(&llvm_cbe_tmp__176));
printf("\nReturn  = %lf",llvm_cbe_tmp__179);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fpext float %%1 to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_539_count);
  llvm_cbe_tmp__180 = (double )((double )llvm_cbe_tmp__167);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__180, *(long long*)(&llvm_cbe_tmp__180));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = tail call double @sqrt(double %%14) nounwind readnone, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_540_count);
  llvm_cbe_tmp__181 = (double ) /*tail*/ sqrt(llvm_cbe_tmp__180);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__180, *(long long*)(&llvm_cbe_tmp__180));
printf("\nReturn  = %lf",llvm_cbe_tmp__181);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fmul double %%13, %%15, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_541_count);
  llvm_cbe_tmp__182 = (double )llvm_cbe_tmp__179 * llvm_cbe_tmp__181;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__182, *(long long*)(&llvm_cbe_tmp__182));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fpext float %%Q to double, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_542_count);
  llvm_cbe_tmp__183 = (double )((double )llvm_cbe_Q);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__183, *(long long*)(&llvm_cbe_tmp__183));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fdiv double %%16, %%17, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_543_count);
  llvm_cbe_tmp__184 = (double )llvm_cbe_tmp__182 / llvm_cbe_tmp__183;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__184, *(long long*)(&llvm_cbe_tmp__184));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = fptrunc double %%18 to float, !dbg !13 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_544_count);
  llvm_cbe_tmp__185 = (float )((float )llvm_cbe_tmp__184);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__185, *(int*)(&llvm_cbe_tmp__185));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fmul float %%2, %%12, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_550_count);
  llvm_cbe_tmp__186 = (float )((float )(llvm_cbe_tmp__168 * llvm_cbe_tmp__178));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__186, *(int*)(&llvm_cbe_tmp__186));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fadd float %%3, %%20, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_556_count);
  llvm_cbe_tmp__187 = (float )((float )(llvm_cbe_tmp__169 + llvm_cbe_tmp__186));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__187, *(int*)(&llvm_cbe_tmp__187));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fadd float %%21, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_557_count);
  llvm_cbe_tmp__188 = (float )((float )(llvm_cbe_tmp__187 + llvm_cbe_tmp__185));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__188, *(int*)(&llvm_cbe_tmp__188));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = fmul float %%1, %%22, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_558_count);
  llvm_cbe_tmp__189 = (float )((float )(llvm_cbe_tmp__167 * llvm_cbe_tmp__188));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__189, *(int*)(&llvm_cbe_tmp__189));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fmul double %%14, -2.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_559_count);
  llvm_cbe_tmp__190 = (double )llvm_cbe_tmp__180 * -0x1p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__190, *(long long*)(&llvm_cbe_tmp__190));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = fmul float %%3, %%12, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_560_count);
  llvm_cbe_tmp__191 = (float )((float )(llvm_cbe_tmp__169 * llvm_cbe_tmp__178));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__191, *(int*)(&llvm_cbe_tmp__191));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = fadd float %%2, %%25, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_561_count);
  llvm_cbe_tmp__192 = (float )((float )(llvm_cbe_tmp__168 + llvm_cbe_tmp__191));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__192, *(int*)(&llvm_cbe_tmp__192));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fpext float %%26 to double, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_562_count);
  llvm_cbe_tmp__193 = (double )((double )llvm_cbe_tmp__192);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__193, *(long long*)(&llvm_cbe_tmp__193));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fmul double %%24, %%27, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_563_count);
  llvm_cbe_tmp__194 = (double )llvm_cbe_tmp__190 * llvm_cbe_tmp__193;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__194, *(long long*)(&llvm_cbe_tmp__194));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = fptrunc double %%28 to float, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_564_count);
  llvm_cbe_tmp__195 = (float )((float )llvm_cbe_tmp__194);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__195, *(int*)(&llvm_cbe_tmp__195));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = fsub float %%21, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_565_count);
  llvm_cbe_tmp__196 = (float )((float )(llvm_cbe_tmp__187 - llvm_cbe_tmp__185));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__196, *(int*)(&llvm_cbe_tmp__196));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fmul float %%1, %%30, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_566_count);
  llvm_cbe_tmp__197 = (float )((float )(llvm_cbe_tmp__167 * llvm_cbe_tmp__196));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__197, *(int*)(&llvm_cbe_tmp__197));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = fsub float %%3, %%20, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_567_count);
  llvm_cbe_tmp__198 = (float )((float )(llvm_cbe_tmp__169 - llvm_cbe_tmp__186));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__198, *(int*)(&llvm_cbe_tmp__198));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fadd float %%32, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_568_count);
  llvm_cbe_tmp__199 = (float )((float )(llvm_cbe_tmp__198 + llvm_cbe_tmp__185));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__199, *(int*)(&llvm_cbe_tmp__199));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = fsub float %%2, %%25, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_569_count);
  llvm_cbe_tmp__200 = (float )((float )(llvm_cbe_tmp__168 - llvm_cbe_tmp__191));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__200, *(int*)(&llvm_cbe_tmp__200));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = fmul float %%34, 2.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_570_count);
  llvm_cbe_tmp__201 = (float )((float )(llvm_cbe_tmp__200 * 0x1p1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__201, *(int*)(&llvm_cbe_tmp__201));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = fsub float %%32, %%19, !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_571_count);
  llvm_cbe_tmp__202 = (float )((float )(llvm_cbe_tmp__198 - llvm_cbe_tmp__185));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__202, *(int*)(&llvm_cbe_tmp__202));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_setCoefficients(float %%23, float %%29, float %%31, float %%33, float %%35, float %%36), !dbg !14 for 0x%I64xth hint within @IIR_makeHighShelf  --> \n", ++aesl_llvm_cbe_572_count);
   /*tail*/ IIR_setCoefficients(llvm_cbe_tmp__189, llvm_cbe_tmp__195, llvm_cbe_tmp__197, llvm_cbe_tmp__199, llvm_cbe_tmp__201, llvm_cbe_tmp__202);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__189, *(int*)(&llvm_cbe_tmp__189));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__195, *(int*)(&llvm_cbe_tmp__195));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__197, *(int*)(&llvm_cbe_tmp__197));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__199, *(int*)(&llvm_cbe_tmp__199));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__201, *(int*)(&llvm_cbe_tmp__201));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__202, *(int*)(&llvm_cbe_tmp__202));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_makeHighShelf}\n");
  return;
}


void IIR_makePeakEQ(float llvm_cbe_sampleRate, float llvm_cbe_centreFrequency, float llvm_cbe_Q, float llvm_cbe_gainFactor) {
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  float llvm_cbe_tmp__203;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  float llvm_cbe_tmp__204;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  double llvm_cbe_tmp__205;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  double llvm_cbe_tmp__206;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  double llvm_cbe_tmp__207;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  double llvm_cbe_tmp__208;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  float llvm_cbe_tmp__209;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
  double llvm_cbe_tmp__210;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  double llvm_cbe_tmp__211;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  double llvm_cbe_tmp__212;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;
  double llvm_cbe_tmp__213;
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  double llvm_cbe_tmp__214;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;
  float llvm_cbe_tmp__215;
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  double llvm_cbe_tmp__216;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  double llvm_cbe_tmp__217;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  float llvm_cbe_tmp__218;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
  float llvm_cbe_tmp__219;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  float llvm_cbe_tmp__220;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  float llvm_cbe_tmp__221;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  float llvm_cbe_tmp__222;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  float llvm_cbe_tmp__223;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  float llvm_cbe_tmp__224;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_makePeakEQ\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call float @jmax(float 0.000000e+00, float %%gainFactor), !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_582_count);
  llvm_cbe_tmp__203 = (float ) /*tail*/ jmax(0x0p0, llvm_cbe_gainFactor);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x0p0);
printf("\nArgument gainFactor = %f,  0x%x",llvm_cbe_gainFactor, *(int*)(&llvm_cbe_gainFactor));
printf("\nReturn  = %f",llvm_cbe_tmp__203);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call float @jmax(float %%centreFrequency, float 2.000000e+00), !dbg !12 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_586_count);
  llvm_cbe_tmp__204 = (float ) /*tail*/ jmax(llvm_cbe_centreFrequency, 0x1p1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument centreFrequency = %f,  0x%x",llvm_cbe_centreFrequency, *(int*)(&llvm_cbe_centreFrequency));
printf("\nArgument  = %f",0x1p1);
printf("\nReturn  = %f",llvm_cbe_tmp__204);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fpext float %%2 to double, !dbg !12 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_587_count);
  llvm_cbe_tmp__205 = (double )((double )llvm_cbe_tmp__204);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__205, *(long long*)(&llvm_cbe_tmp__205));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fmul double %%3, 0x401921FB54442D18, !dbg !12 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_588_count);
  llvm_cbe_tmp__206 = (double )llvm_cbe_tmp__205 * 0x1.921fb54442d18p2;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__206, *(long long*)(&llvm_cbe_tmp__206));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fpext float %%sampleRate to double, !dbg !12 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_589_count);
  llvm_cbe_tmp__207 = (double )((double )llvm_cbe_sampleRate);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__207, *(long long*)(&llvm_cbe_tmp__207));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fdiv double %%4, %%5, !dbg !12 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_590_count);
  llvm_cbe_tmp__208 = (double )llvm_cbe_tmp__206 / llvm_cbe_tmp__207;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__208, *(long long*)(&llvm_cbe_tmp__208));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fptrunc double %%6 to float, !dbg !12 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_591_count);
  llvm_cbe_tmp__209 = (float )((float )llvm_cbe_tmp__208);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__209, *(int*)(&llvm_cbe_tmp__209));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fpext float %%7 to double, !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_595_count);
  llvm_cbe_tmp__210 = (double )((double )llvm_cbe_tmp__209);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__210, *(long long*)(&llvm_cbe_tmp__210));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = tail call double @sin(double %%8) nounwind readnone, !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_596_count);
  llvm_cbe_tmp__211 = (double ) /*tail*/ sin(llvm_cbe_tmp__210);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__210, *(long long*)(&llvm_cbe_tmp__210));
printf("\nReturn  = %lf",llvm_cbe_tmp__211);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fmul double %%9, 5.000000e-01, !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_597_count);
  llvm_cbe_tmp__212 = (double )llvm_cbe_tmp__211 * 0x1p-1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__212, *(long long*)(&llvm_cbe_tmp__212));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fpext float %%Q to double, !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_598_count);
  llvm_cbe_tmp__213 = (double )((double )llvm_cbe_Q);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__213, *(long long*)(&llvm_cbe_tmp__213));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fdiv double %%10, %%11, !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_599_count);
  llvm_cbe_tmp__214 = (double )llvm_cbe_tmp__212 / llvm_cbe_tmp__213;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__214, *(long long*)(&llvm_cbe_tmp__214));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fptrunc double %%12 to float, !dbg !13 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_600_count);
  llvm_cbe_tmp__215 = (float )((float )llvm_cbe_tmp__214);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__215, *(int*)(&llvm_cbe_tmp__215));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = tail call double @cos(double %%8) nounwind readnone, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_602_count);
  llvm_cbe_tmp__216 = (double ) /*tail*/ cos(llvm_cbe_tmp__210);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__210, *(long long*)(&llvm_cbe_tmp__210));
printf("\nReturn  = %lf",llvm_cbe_tmp__216);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul double %%14, -2.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_603_count);
  llvm_cbe_tmp__217 = (double )llvm_cbe_tmp__216 * -0x1p1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__217, *(long long*)(&llvm_cbe_tmp__217));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fptrunc double %%15 to float, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_604_count);
  llvm_cbe_tmp__218 = (float )((float )llvm_cbe_tmp__217);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__218, *(int*)(&llvm_cbe_tmp__218));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fmul float %%13, %%1, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_607_count);
  llvm_cbe_tmp__219 = (float )((float )(llvm_cbe_tmp__215 * llvm_cbe_tmp__203));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__219, *(int*)(&llvm_cbe_tmp__219));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fdiv float %%13, %%1, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_610_count);
  llvm_cbe_tmp__220 = (float )((float )(llvm_cbe_tmp__215 / llvm_cbe_tmp__203));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__220, *(int*)(&llvm_cbe_tmp__220));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = fadd float %%17, 1.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_613_count);
  llvm_cbe_tmp__221 = (float )((float )(llvm_cbe_tmp__219 + 0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__221, *(int*)(&llvm_cbe_tmp__221));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fsub float 1.000000e+00, %%17, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_616_count);
  llvm_cbe_tmp__222 = (float )((float )(0x1p0 - llvm_cbe_tmp__219));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__222, *(int*)(&llvm_cbe_tmp__222));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fadd float %%18, 1.000000e+00, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_618_count);
  llvm_cbe_tmp__223 = (float )((float )(llvm_cbe_tmp__220 + 0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__223, *(int*)(&llvm_cbe_tmp__223));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fsub float 1.000000e+00, %%18, !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_621_count);
  llvm_cbe_tmp__224 = (float )((float )(0x1p0 - llvm_cbe_tmp__220));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__224, *(int*)(&llvm_cbe_tmp__224));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IIR_setCoefficients(float %%19, float %%16, float %%20, float %%21, float %%16, float %%22), !dbg !14 for 0x%I64xth hint within @IIR_makePeakEQ  --> \n", ++aesl_llvm_cbe_622_count);
   /*tail*/ IIR_setCoefficients(llvm_cbe_tmp__221, llvm_cbe_tmp__218, llvm_cbe_tmp__222, llvm_cbe_tmp__223, llvm_cbe_tmp__218, llvm_cbe_tmp__224);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__221, *(int*)(&llvm_cbe_tmp__221));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__218, *(int*)(&llvm_cbe_tmp__218));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__222, *(int*)(&llvm_cbe_tmp__222));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__223, *(int*)(&llvm_cbe_tmp__223));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__218, *(int*)(&llvm_cbe_tmp__218));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__224, *(int*)(&llvm_cbe_tmp__224));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_makePeakEQ}\n");
  return;
}


float IIR_getCoeffFloat(signed int llvm_cbe_idx) {
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
  float *llvm_cbe_tmp__225;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  float llvm_cbe_tmp__226;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_getCoeffFloat\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [6 x float]* @aesl_internal_coefficients, i32 0, i32 %%idx, !dbg !12 for 0x%I64xth hint within @IIR_getCoeffFloat  --> \n", ++aesl_llvm_cbe_626_count);
  llvm_cbe_tmp__225 = (float *)(&aesl_internal_coefficients[(((signed int )llvm_cbe_idx))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nidx = 0x%X",((signed int )llvm_cbe_idx));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_idx) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_coefficients' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load float* %%1, align 4, !dbg !12 for 0x%I64xth hint within @IIR_getCoeffFloat  --> \n", ++aesl_llvm_cbe_627_count);
  llvm_cbe_tmp__226 = (float )*llvm_cbe_tmp__225;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__226, *(int*)(&llvm_cbe_tmp__226));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_getCoeffFloat}\n");
  return llvm_cbe_tmp__226;
}


signed int IIR_getCoeffFixed(signed int llvm_cbe_idx) {
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
  signed int *llvm_cbe_tmp__227;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  unsigned int llvm_cbe_tmp__228;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IIR_getCoeffFixed\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [6 x i32]* @aesl_internal_coef_fixed, i32 0, i32 %%idx, !dbg !12 for 0x%I64xth hint within @IIR_getCoeffFixed  --> \n", ++aesl_llvm_cbe_631_count);
  llvm_cbe_tmp__227 = (signed int *)(&aesl_internal_coef_fixed[(((signed int )llvm_cbe_idx))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nidx = 0x%X",((signed int )llvm_cbe_idx));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_idx) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_coef_fixed' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%1, align 4, !dbg !12 for 0x%I64xth hint within @IIR_getCoeffFixed  --> \n", ++aesl_llvm_cbe_632_count);
  llvm_cbe_tmp__228 = (unsigned int )*llvm_cbe_tmp__227;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__228);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IIR_getCoeffFixed}\n");
  return llvm_cbe_tmp__228;
}

