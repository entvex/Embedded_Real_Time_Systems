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
/* Structure forward decls */
typedef struct l_struct_OC__iobuf l_struct_OC__iobuf;

/* Structure contents */
struct l_struct_OC__iobuf {
   char *field0;
  unsigned int field1;
   char *field2;
  unsigned int field3;
  unsigned int field4;
  unsigned int field5;
  unsigned int field6;
   char *field7;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void setCoeff(signed int *llvm_cbe_coeff, signed int llvm_cbe_band);
signed int IIR_getCoeffFixed(signed int );
void AESL_WRAP_eq(signed int , signed int , signed int , signed int , signed int , signed short , signed short , signed short *);
signed int main(void);
void IIR_create(void);
void IIR_makePeakEQ(float , float , float , float );


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str[15] = "eq_impulse.dat";
static  char aesl_internal__OC_str1[2] = "w";
static  char aesl_internal__OC_str2[10] = "%i %d %d\n";
static  char aesl_internal__OC_str3[17] = "%03i %05d %05d\r\n";


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

void setCoeff(signed int *llvm_cbe_coeff, signed int llvm_cbe_band) {
  static  unsigned long long aesl_llvm_cbe_output_count = 0;
  signed short llvm_cbe_output;    /* Address-exposed local */
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
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  signed int *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  signed int *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  signed int *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  signed int *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned short llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @setCoeff\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = call i32 @IIR_getCoeffFixed(i32 0) nounwind, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__1 = (unsigned int )IIR_getCoeffFixed(0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = mul nsw i32 %%band, 5, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(llvm_cbe_band&4294967295ull)) * ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__2&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i32* %%coeff, i32 %%2, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__3 = (signed int *)(&llvm_cbe_coeff[(((signed int )llvm_cbe_tmp__2))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__2));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%1, i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_28_count);
  *llvm_cbe_tmp__3 = llvm_cbe_tmp__1;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = call i32 @IIR_getCoeffFixed(i32 1) nounwind, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__4 = (unsigned int )IIR_getCoeffFixed(1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__4);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add nsw i32 %%2, 1, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(llvm_cbe_tmp__2&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__5&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i32* %%coeff, i32 %%5, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__6 = (signed int *)(&llvm_cbe_coeff[(((signed int )llvm_cbe_tmp__5))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__5));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%4, i32* %%6, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_32_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = call i32 @IIR_getCoeffFixed(i32 2) nounwind, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__7 = (unsigned int )IIR_getCoeffFixed(2u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",2u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__7);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%2, 2, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__8 = (unsigned int )((unsigned int )(llvm_cbe_tmp__2&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__8&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds i32* %%coeff, i32 %%8, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__9 = (signed int *)(&llvm_cbe_coeff[(((signed int )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__8));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%7, i32* %%9, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_36_count);
  *llvm_cbe_tmp__9 = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = call i32 @IIR_getCoeffFixed(i32 4) nounwind, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__10 = (unsigned int )IIR_getCoeffFixed(4u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",4u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add nsw i32 %%2, 3, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_tmp__2&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds i32* %%coeff, i32 %%11, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__12 = (signed int *)(&llvm_cbe_coeff[(((signed int )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%10, i32* %%12, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_40_count);
  *llvm_cbe_tmp__12 = llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = call i32 @IIR_getCoeffFixed(i32 5) nounwind, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__13 = (unsigned int )IIR_getCoeffFixed(5u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",5u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__13);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%2, 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__14 = (unsigned int )((unsigned int )(llvm_cbe_tmp__2&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__14&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i32* %%coeff, i32 %%14, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__15 = (signed int *)(&llvm_cbe_coeff[(((signed int )llvm_cbe_tmp__14))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__14));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%13, i32* %%15, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_44_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__16 = (unsigned int )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i32* %%6, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__17 = (unsigned int )*llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i32* %%9, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__18 = (unsigned int )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i32* %%12, align 4, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__19 = (unsigned int )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = trunc i32 %%band to i16, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__20 = (unsigned short )((unsigned short )llvm_cbe_band&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  call void @AESL_WRAP_eq(i32 %%16, i32 %%17, i32 %%18, i32 %%19, i32 %%13, i16 signext %%20, i16 signext 0, i16* %%output) nounwind, !dbg !3 for 0x%I64xth hint within @setCoeff  --> \n", ++aesl_llvm_cbe_50_count);
  AESL_WRAP_eq(llvm_cbe_tmp__16, llvm_cbe_tmp__17, llvm_cbe_tmp__18, llvm_cbe_tmp__19, llvm_cbe_tmp__13, llvm_cbe_tmp__20, ((unsigned short )0), (signed short *)(&llvm_cbe_output));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__16);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__17);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__18);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__19);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__13);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__20);
printf("\nArgument  = 0x%X",((unsigned short )0));
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @setCoeff}\n");
  return;
}


signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_output_count = 0;
  signed short llvm_cbe_output;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_coefficients_count = 0;
  signed int llvm_cbe_coefficients[35];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  signed int *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
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
  l_struct_OC__iobuf *llvm_cbe_tmp__22;
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
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned short llvm_cbe_storemerge1;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned short llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned short llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_create() nounwind, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_54_count);
  IIR_create();
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 2.000000e+02, float 1.000000e+01, float 0x3FFCCCCCC0000000) nounwind, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_55_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.9p7, 0x1.4p3, 0x1.ccccccp0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.9p7);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.ccccccp0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [35 x i32]* %%coefficients, i32 0, i32 0, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__21 = (signed int *)(&llvm_cbe_coefficients[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 35
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 0), !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_57_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 5.000000e+02, float 1.000000e+01, float 0x3FB99999A0000000) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_58_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.f4p8, 0x1.4p3, 0x1.99999ap-4);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.f4p8);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.99999ap-4);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 1), !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_59_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 1.000000e+03, float 1.000000e+01, float 0x3FB99999A0000000) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_60_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.f4p9, 0x1.4p3, 0x1.99999ap-4);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.f4p9);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.99999ap-4);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 2), !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_61_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 2u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",2u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 2.000000e+03, float 1.000000e+01, float 0x3FFCCCCCC0000000) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_62_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.f4p10, 0x1.4p3, 0x1.ccccccp0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.f4p10);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.ccccccp0);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 3), !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_63_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 3u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",3u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 4.000000e+03, float 1.000000e+01, float 0x3FB99999A0000000) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_64_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.f4p11, 0x1.4p3, 0x1.99999ap-4);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.f4p11);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.99999ap-4);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 4), !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_65_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 4u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",4u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 8.000000e+03, float 1.000000e+01, float 0x3FB99999A0000000) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_66_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.f4p12, 0x1.4p3, 0x1.99999ap-4);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.f4p12);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.99999ap-4);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 5), !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_67_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 5u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",5u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @IIR_makePeakEQ(float 4.800000e+04, float 1.600000e+04, float 1.000000e+01, float 0x3FFCCCCCC0000000) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_68_count);
  IIR_makePeakEQ(0x1.77p15, 0x1.f4p13, 0x1.4p3, 0x1.ccccccp0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.77p15);
printf("\nArgument  = %f",0x1.f4p13);
printf("\nArgument  = %f",0x1.4p3);
printf("\nArgument  = %f",0x1.ccccccp0);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @setCoeff(i32* %%1, i32 6), !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_69_count);
  setCoeff((signed int *)llvm_cbe_tmp__21, 6u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",6u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call %%struct._iobuf* @fopen(i8* getelementptr inbounds ([15 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @aesl_internal_.str1, i32 0, i32 0)) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__22 = (l_struct_OC__iobuf *)aesl_fopen(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 15
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 2
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__22);
}
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__32;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__32:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ 0, %%0 ], [ %%12, %%3  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__30);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = select i1 %%4, i16 16384, i16 0, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned short )((((llvm_cbe_storemerge2&4294967295U) == (0u&4294967295U))) ? ((unsigned short )((unsigned short )16384)) : ((unsigned short )((unsigned short )0)));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge1 = 0x%X\n", llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n  call void @AESL_WRAP_eq(i32 0, i32 0, i32 0, i32 0, i32 0, i16 signext 7, i16 signext %%storemerge1, i16* %%output) nounwind, !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_86_count);
  AESL_WRAP_eq(0u, 0u, 0u, 0u, 0u, ((unsigned short )7), llvm_cbe_storemerge1, (signed short *)(&llvm_cbe_output));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",((unsigned short )7));
printf("\nArgument storemerge1 = 0x%X",llvm_cbe_storemerge1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = zext i16 %%storemerge1 to i32, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__23 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_storemerge1&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i16* %%output, align 2, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__24 = (unsigned short )*(&llvm_cbe_output);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sext i16 %%6 to i32, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__25 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @aesl_internal_.str2, i32 0, i32 0), i32 %%storemerge2, i32 %%5, i32 %%7) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_96_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
])), llvm_cbe_storemerge2, llvm_cbe_tmp__23, llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__23);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__25);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__26);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i16* %%output, align 2, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__27 = (unsigned short )*(&llvm_cbe_output);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sext i16 %%9 to i32, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__28 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%2, i8* getelementptr inbounds ([17 x i8]* @aesl_internal_.str3, i32 0, i32 0), i32 %%storemerge2, i32 %%5, i32 %%10) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_105_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__22, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 17
#endif
])), llvm_cbe_storemerge2, llvm_cbe_tmp__23, llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__23);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__28);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__29);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add nsw i32 %%storemerge2, 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_storemerge2&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
  if (((llvm_cbe_tmp__30&4294967295U) == (48000u&4294967295U))) {
    goto llvm_cbe_tmp__33;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__30;   /* for PHI node */
    goto llvm_cbe_tmp__32;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__33:
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = call i32 @fclose(%%struct._iobuf* %%2) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_114_count);
  fclose((l_struct_OC__iobuf *)llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__31);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return 0u;
}

