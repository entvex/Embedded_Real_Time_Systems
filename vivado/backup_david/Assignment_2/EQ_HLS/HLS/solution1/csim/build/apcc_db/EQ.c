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
void iir(signed int llvm_cbe_b0, signed int llvm_cbe_b1, signed int llvm_cbe_b2, signed int llvm_cbe_a1, signed int llvm_cbe_a2, signed short llvm_cbe_band, signed short llvm_cbe_sample, signed short *llvm_cbe_result);
void eq(signed int llvm_cbe_b0, signed int llvm_cbe_b1, signed int llvm_cbe_b2, signed int llvm_cbe_a1, signed int llvm_cbe_a2, signed short llvm_cbe_band, signed short llvm_cbe_sampleIn, signed short *llvm_cbe_sampleOut);


/* Global Variable Definitions and Initialization */
static signed int aesl_internal_iir_OC_x1_fix[7];
static signed int aesl_internal_iir_OC_x2_fix[7];
static signed int aesl_internal_iir_OC_y1_fix[7];
static signed int aesl_internal_iir_OC_y2_fix[7];
static signed int aesl_internal_eq_OC_coeff[35];


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

void iir(signed int llvm_cbe_b0, signed int llvm_cbe_b1, signed int llvm_cbe_b2, signed int llvm_cbe_a1, signed int llvm_cbe_a2, signed short llvm_cbe_band, signed short llvm_cbe_sample, signed short *llvm_cbe_result) {
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
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  signed int *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  signed int *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned short llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @iir\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sext i16 %%sample to i32, !dbg !6 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__1 = (unsigned int )((signed int )(signed short )llvm_cbe_sample);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = mul nsw i32 %%1, %%b0, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(llvm_cbe_tmp__1&4294967295ull)) * ((unsigned int )(llvm_cbe_b0&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__2&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sext i16 %%band to i32, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__3 = (unsigned int )((signed int )(signed short )llvm_cbe_band);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [7 x i32]* @aesl_internal_iir.x1_fix, i32 0, i32 %%3, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__4 = (signed int *)(&aesl_internal_iir_OC_x1_fix[(((signed int )llvm_cbe_tmp__3))
#ifdef AESL_BC_SIM
 % 7
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__3));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__3) < 7)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_iir.x1_fix' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i32* %%4, align 4, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__5 = (unsigned int )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = mul nsw i32 %%5, %%b1, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_tmp__5&4294967295ull)) * ((unsigned int )(llvm_cbe_b1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [7 x i32]* @aesl_internal_iir.x2_fix, i32 0, i32 %%3, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__7 = (signed int *)(&aesl_internal_iir_OC_x2_fix[(((signed int )llvm_cbe_tmp__3))
#ifdef AESL_BC_SIM
 % 7
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__3));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__3) < 7)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_iir.x2_fix' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__8 = (unsigned int )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = mul nsw i32 %%8, %%b2, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_tmp__8&4294967295ull)) * ((unsigned int )(llvm_cbe_b2&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [7 x i32]* @aesl_internal_iir.y1_fix, i32 0, i32 %%3, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__10 = (signed int *)(&aesl_internal_iir_OC_y1_fix[(((signed int )llvm_cbe_tmp__3))
#ifdef AESL_BC_SIM
 % 7
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__3));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__3) < 7)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_iir.y1_fix' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i32* %%10, align 4, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__11 = (unsigned int )*llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = mul nsw i32 %%11, %%a1, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__12 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) * ((unsigned int )(llvm_cbe_a1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__12&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [7 x i32]* @aesl_internal_iir.y2_fix, i32 0, i32 %%3, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__13 = (signed int *)(&aesl_internal_iir_OC_y2_fix[(((signed int )llvm_cbe_tmp__3))
#ifdef AESL_BC_SIM
 % 7
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__3));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__3) < 7)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_iir.y2_fix' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%13, align 4, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__14 = (unsigned int )*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = mul nsw i32 %%14, %%a2, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__15 = (unsigned int )((unsigned int )(llvm_cbe_tmp__14&4294967295ull)) * ((unsigned int )(llvm_cbe_a2&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__15&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add i32 %%6, %%2, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__16 = (unsigned int )((unsigned int )(llvm_cbe_tmp__6&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__2&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__16&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add i32 %%16, %%9, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__16&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__9&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = sub i32 %%17, %%12, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_tmp__17&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__12&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = sub i32 %%18, %%15, !dbg !3 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(llvm_cbe_tmp__18&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__15&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__19&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = ashr i32 %%19, 15, !dbg !6 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__20 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__19) >> ((signed int )15u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__20));

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__3) < 7 && "Write access out of array 'aesl_internal_iir.x2_fix' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%5, i32* %%7, align 4, !dbg !5 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_54_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__3) < 7 && "Write access out of array 'aesl_internal_iir.x1_fix' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%1, i32* %%4, align 4, !dbg !5 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_55_count);
  *llvm_cbe_tmp__4 = llvm_cbe_tmp__1;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__3) < 7 && "Write access out of array 'aesl_internal_iir.y2_fix' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%11, i32* %%13, align 4, !dbg !5 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_56_count);
  *llvm_cbe_tmp__13 = llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__3) < 7 && "Write access out of array 'aesl_internal_iir.y1_fix' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%20, i32* %%10, align 4, !dbg !5 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_57_count);
  *llvm_cbe_tmp__10 = llvm_cbe_tmp__20;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = trunc i32 %%20 to i16, !dbg !5 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__21 = (unsigned short )((unsigned short )llvm_cbe_tmp__20&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%21, i16* %%result, align 2, !dbg !5 for 0x%I64xth hint within @iir  --> \n", ++aesl_llvm_cbe_59_count);
  *llvm_cbe_result = llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @iir}\n");
  return;
}


void eq(signed int llvm_cbe_b0, signed int llvm_cbe_b1, signed int llvm_cbe_b2, signed int llvm_cbe_a1, signed int llvm_cbe_a2, signed short llvm_cbe_band, signed short llvm_cbe_sampleIn, signed short *llvm_cbe_sampleOut) {
  static  unsigned long long aesl_llvm_cbe_result_count = 0;
  signed short llvm_cbe_result;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned short llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned short llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  unsigned short llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  signed int *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned short llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  signed int *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned short llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  signed int *llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  signed int *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned short llvm_cbe_storemerge1;
  unsigned short llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  unsigned short llvm_cbe_tmp__37;
  unsigned short llvm_cbe_tmp__37__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  unsigned short llvm_cbe_tmp__38;
  unsigned short llvm_cbe_tmp__38__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  signed int *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  signed int *llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  signed int *llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  signed int *llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  signed int *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  unsigned short llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  unsigned short llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  unsigned short llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  unsigned short llvm_cbe_tmp__57;
  unsigned short llvm_cbe_tmp__57__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @eq\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i16 0, i16* %%result, align 2, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_84_count);
  *(&llvm_cbe_result) = ((unsigned short )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )0));
  if ((((signed short )llvm_cbe_band) < ((signed short )((unsigned short )7)))) {
    goto llvm_cbe_tmp__58;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
    llvm_cbe_tmp__37__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
    llvm_cbe_tmp__38__PHI_TEMPORARY = (unsigned short )llvm_cbe_sampleIn;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

llvm_cbe_tmp__58:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = mul i16 %%band, 5, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__22 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_band&65535ull)) * ((unsigned short )(((unsigned short )5)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__22&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = add i16 %%3, 1, !dbg !3 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__23 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__22&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__23&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i16 %%3 to i32, !dbg !3 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__24 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%5, !dbg !3 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__25 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__24))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__24));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__24) < 35 && "Write access out of array 'aesl_internal_eq.coeff' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%b0, i32* %%6, align 4, !dbg !3 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_123_count);
  *llvm_cbe_tmp__25 = llvm_cbe_b0;
if (AESL_DEBUG_TRACE)
printf("\nb0 = 0x%X\n", llvm_cbe_b0);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add i16 %%3, 2, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_124_count);
  llvm_cbe_tmp__26 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__22&65535ull)) + ((unsigned short )(((unsigned short )2)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__26&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = sext i16 %%4 to i32, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__27 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%8, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__28 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__27))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__27));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__27) < 35 && "Write access out of array 'aesl_internal_eq.coeff' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%b1, i32* %%9, align 4, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_140_count);
  *llvm_cbe_tmp__28 = llvm_cbe_b1;
if (AESL_DEBUG_TRACE)
printf("\nb1 = 0x%X\n", llvm_cbe_b1);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add i16 %%3, 3, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__29 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__22&65535ull)) + ((unsigned short )(((unsigned short )3)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__29&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = sext i16 %%7 to i32, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__30 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%11, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__31 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__30))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__30));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__30) < 35 && "Write access out of array 'aesl_internal_eq.coeff' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%b2, i32* %%12, align 4, !dbg !4 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_157_count);
  *llvm_cbe_tmp__31 = llvm_cbe_b2;
if (AESL_DEBUG_TRACE)
printf("\nb2 = 0x%X\n", llvm_cbe_b2);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add i16 %%3, 4, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__32 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__22&65535ull)) + ((unsigned short )(((unsigned short )4)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__32&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sext i16 %%10 to i32, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__33 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%14, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_173_count);
  llvm_cbe_tmp__34 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__33))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__33));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__33) < 35 && "Write access out of array 'aesl_internal_eq.coeff' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%a1, i32* %%15, align 4, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_174_count);
  *llvm_cbe_tmp__34 = llvm_cbe_a1;
if (AESL_DEBUG_TRACE)
printf("\na1 = 0x%X\n", llvm_cbe_a1);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = sext i16 %%13 to i32, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__35 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%16, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_176_count);
  llvm_cbe_tmp__36 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__35))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__35));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__35) < 35 && "Write access out of array 'aesl_internal_eq.coeff' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%a2, i32* %%17, align 4, !dbg !5 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_177_count);
  *llvm_cbe_tmp__36 = llvm_cbe_a2;
if (AESL_DEBUG_TRACE)
printf("\na2 = 0x%X\n", llvm_cbe_a2);
  llvm_cbe_tmp__57__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe__2e_loopexit;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i16 [ %%37, %%.preheader ], [ 0, %%0  for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned short )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",llvm_cbe_tmp__56);
printf("\n = 0x%X",((unsigned short )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = phi i16 [ %%36, %%.preheader ], [ 0, %%0  for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__37 = (unsigned short )llvm_cbe_tmp__37__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__37);
printf("\n = 0x%X",llvm_cbe_tmp__55);
printf("\n = 0x%X",((unsigned short )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = phi i16 [ %%35, %%.preheader ], [ %%sampleIn, %%0  for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__38 = (unsigned short )llvm_cbe_tmp__38__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__38);
printf("\n = 0x%X",llvm_cbe_tmp__54);
printf("\nsampleIn = 0x%X",llvm_cbe_sampleIn);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = sext i16 %%storemerge1 to i32, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__39 = (unsigned int )((signed int )(signed short )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%20, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__40 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__39))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__39));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__39) < 35)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_eq.coeff' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%21, align 4, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__41 = (unsigned int )*llvm_cbe_tmp__40;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add nsw i32 %%20, 1, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__42 = (unsigned int )((unsigned int )(llvm_cbe_tmp__39&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__42&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%23, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__43 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__42))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__42));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__42) < 35)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_eq.coeff' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%24, align 4, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__44 = (unsigned int )*llvm_cbe_tmp__43;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%20, 2, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__39&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%26, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__46 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__45))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__45));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__45) < 35)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_eq.coeff' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%27, align 4, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__47 = (unsigned int )*llvm_cbe_tmp__46;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = add nsw i32 %%20, 3, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__48 = (unsigned int )((unsigned int )(llvm_cbe_tmp__39&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__48&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%29, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__49 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__48))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__48));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__48) < 35)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_eq.coeff' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load i32* %%30, align 4, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_192_count);
  llvm_cbe_tmp__50 = (unsigned int )*llvm_cbe_tmp__49;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add nsw i32 %%20, 4, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_193_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_tmp__39&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [35 x i32]* @aesl_internal_eq.coeff, i32 0, i32 %%32, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__52 = (signed int *)(&aesl_internal_eq_OC_coeff[(((signed int )llvm_cbe_tmp__51))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__51));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__51) < 35)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_eq.coeff' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%33, align 4, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_195_count);
  llvm_cbe_tmp__53 = (unsigned int )*llvm_cbe_tmp__52;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  call void @iir(i32 %%22, i32 %%25, i32 %%28, i32 %%31, i32 %%34, i16 signext %%18, i16 signext %%19, i16* %%result), !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_196_count);
  iir(llvm_cbe_tmp__41, llvm_cbe_tmp__44, llvm_cbe_tmp__47, llvm_cbe_tmp__50, llvm_cbe_tmp__53, llvm_cbe_tmp__37, llvm_cbe_tmp__38, (signed short *)(&llvm_cbe_result));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__41);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__44);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__47);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__50);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__53);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__37);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__38);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load i16* %%result, align 2, !dbg !8 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_203_count);
  llvm_cbe_tmp__54 = (unsigned short )*(&llvm_cbe_result);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add i16 %%18, 1, !dbg !7 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_206_count);
  llvm_cbe_tmp__55 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__37&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__55&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = add i16 %%storemerge1, 5, !dbg !7 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_210_count);
  llvm_cbe_tmp__56 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge1&65535ull)) + ((unsigned short )(((unsigned short )5)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__56&65535ull)));
  if (((llvm_cbe_tmp__55&65535U) == (((unsigned short )7)&65535U))) {
    llvm_cbe_tmp__57__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__54;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__56;   /* for PHI node */
    llvm_cbe_tmp__37__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__55;   /* for PHI node */
    llvm_cbe_tmp__38__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__54;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = phi i16 [ 0, %%2 ], [ %%35, %%.preheader  for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__57 = (unsigned short )llvm_cbe_tmp__57__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__57);
printf("\n = 0x%X",((unsigned short )0));
printf("\n = 0x%X",llvm_cbe_tmp__54);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%38, i16* %%sampleOut, align 2, !dbg !6 for 0x%I64xth hint within @eq  --> \n", ++aesl_llvm_cbe_229_count);
  *llvm_cbe_sampleOut = llvm_cbe_tmp__57;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__57);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @eq}\n");
  return;
}

