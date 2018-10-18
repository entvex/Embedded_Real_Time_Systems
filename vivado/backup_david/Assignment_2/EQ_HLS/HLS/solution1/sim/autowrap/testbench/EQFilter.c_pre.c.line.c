#pragma line 1 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c"
#pragma line 34 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c"
#pragma line 1 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 1 3
#pragma line 16 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
#pragma empty_line
#pragma line 17 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 1 3
#pragma line 32 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
#pragma empty_line
#pragma line 33 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
#pragma line 21 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 2 3
#pragma line 134 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _exception
{
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};
#pragma empty_line
 double __attribute__((__cdecl__)) sin (double);
 double __attribute__((__cdecl__)) cos (double);
 double __attribute__((__cdecl__)) tan (double);
 double __attribute__((__cdecl__)) sinh (double);
 double __attribute__((__cdecl__)) cosh (double);
 double __attribute__((__cdecl__)) tanh (double);
 double __attribute__((__cdecl__)) asin (double);
 double __attribute__((__cdecl__)) acos (double);
 double __attribute__((__cdecl__)) atan (double);
 double __attribute__((__cdecl__)) atan2 (double, double);
 double __attribute__((__cdecl__)) exp (double);
 double __attribute__((__cdecl__)) log (double);
 double __attribute__((__cdecl__)) log10 (double);
 double __attribute__((__cdecl__)) pow (double, double);
 double __attribute__((__cdecl__)) sqrt (double);
 double __attribute__((__cdecl__)) ceil (double);
 double __attribute__((__cdecl__)) floor (double);
 double __attribute__((__cdecl__)) fabs (double);
 double __attribute__((__cdecl__)) ldexp (double, int);
 double __attribute__((__cdecl__)) frexp (double, int*);
 double __attribute__((__cdecl__)) modf (double, double*);
 double __attribute__((__cdecl__)) fmod (double, double);
#pragma line 210 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
struct _complex
{
 double x;
 double y;
};
#pragma empty_line
 double __attribute__((__cdecl__)) _cabs (struct _complex);
#pragma empty_line
 double __attribute__((__cdecl__)) _hypot (double, double);
 double __attribute__((__cdecl__)) _j0 (double);
 double __attribute__((__cdecl__)) _j1 (double);
 double __attribute__((__cdecl__)) _jn (int, double);
 double __attribute__((__cdecl__)) _y0 (double);
 double __attribute__((__cdecl__)) _y1 (double);
 double __attribute__((__cdecl__)) _yn (int, double);
 int __attribute__((__cdecl__)) _matherr (struct _exception *);
#pragma line 234 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) _chgsign (double);
 double __attribute__((__cdecl__)) _copysign (double, double);
 double __attribute__((__cdecl__)) _logb (double);
 double __attribute__((__cdecl__)) _nextafter (double, double);
 double __attribute__((__cdecl__)) _scalb (double, long);
#pragma empty_line
 int __attribute__((__cdecl__)) _finite (double);
 int __attribute__((__cdecl__)) _fpclass (double);
 int __attribute__((__cdecl__)) _isnan (double);
#pragma line 254 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 double __attribute__((__cdecl__)) j0 (double);
 double __attribute__((__cdecl__)) j1 (double);
 double __attribute__((__cdecl__)) jn (int, double);
 double __attribute__((__cdecl__)) y0 (double);
 double __attribute__((__cdecl__)) y1 (double);
 double __attribute__((__cdecl__)) yn (int, double);
#pragma empty_line
 double __attribute__((__cdecl__)) chgsign (double);
#pragma line 270 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
 int __attribute__((__cdecl__)) finite (double);
 int __attribute__((__cdecl__)) fpclass (double);
#pragma line 324 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
typedef long double float_t;
typedef long double double_t;
#pragma line 354 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __fpclassifyf (float);
extern int __attribute__((__cdecl__)) __fpclassify (double);
extern int __attribute__((__cdecl__)) __fpclassifyl (long double);
#pragma line 379 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __isnan (double);
extern int __attribute__((__cdecl__)) __isnanf (float);
extern int __attribute__((__cdecl__)) __isnanl (long double);
#pragma line 419 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern int __attribute__((__cdecl__)) __signbit (double);
extern int __attribute__((__cdecl__)) __signbitf (float);
extern int __attribute__((__cdecl__)) __signbitl (long double);
#pragma line 447 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) sinf (float);
extern long double __attribute__((__cdecl__)) sinl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) cosf (float);
extern long double __attribute__((__cdecl__)) cosl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) tanf (float);
extern long double __attribute__((__cdecl__)) tanl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) asinf (float);
extern long double __attribute__((__cdecl__)) asinl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) acosf (float);
extern long double __attribute__((__cdecl__)) acosl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) atanf (float);
extern long double __attribute__((__cdecl__)) atanl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) atan2f (float, float);
extern long double __attribute__((__cdecl__)) atan2l (long double, long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) sinhf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) sinhl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) coshf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) coshl (long double);
#pragma empty_line
extern float __attribute__((__cdecl__)) tanhf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) tanhl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) acosh (double);
extern float __attribute__((__cdecl__)) acoshf (float);
extern long double __attribute__((__cdecl__)) acoshl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) asinh (double);
extern float __attribute__((__cdecl__)) asinhf (float);
extern long double __attribute__((__cdecl__)) asinhl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) atanh (double);
extern float __attribute__((__cdecl__)) atanhf (float);
extern long double __attribute__((__cdecl__)) atanhl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) expf (float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) expl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) exp2(double);
extern float __attribute__((__cdecl__)) exp2f(float);
extern long double __attribute__((__cdecl__)) exp2l(long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) expm1(double);
extern float __attribute__((__cdecl__)) expm1f(float);
extern long double __attribute__((__cdecl__)) expm1l(long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) frexpf (float, int*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) frexpl (long double, int*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __attribute__((__cdecl__)) ilogb (double);
extern int __attribute__((__cdecl__)) ilogbf (float);
extern int __attribute__((__cdecl__)) ilogbl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) ldexpf (float, int);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) ldexpl (long double, int);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) logf (float);
extern long double __attribute__((__cdecl__)) logl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) log10f (float);
extern long double __attribute__((__cdecl__)) log10l (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) log1p(double);
extern float __attribute__((__cdecl__)) log1pf(float);
extern long double __attribute__((__cdecl__)) log1pl(long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) log2 (double);
extern float __attribute__((__cdecl__)) log2f (float);
extern long double __attribute__((__cdecl__)) log2l (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) logb (double);
extern float __attribute__((__cdecl__)) logbf (float);
extern long double __attribute__((__cdecl__)) logbl (long double);
#pragma line 603 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern float __attribute__((__cdecl__)) modff (float, float*);
extern long double __attribute__((__cdecl__)) modfl (long double, long double*);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) scalbn (double, int);
extern float __attribute__((__cdecl__)) scalbnf (float, int);
extern long double __attribute__((__cdecl__)) scalbnl (long double, int);
#pragma empty_line
extern double __attribute__((__cdecl__)) scalbln (double, long);
extern float __attribute__((__cdecl__)) scalblnf (float, long);
extern long double __attribute__((__cdecl__)) scalblnl (long double, long);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) cbrt (double);
extern float __attribute__((__cdecl__)) cbrtf (float);
extern long double __attribute__((__cdecl__)) cbrtl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) fabsf (float x);
extern long double __attribute__((__cdecl__)) fabsl (long double x);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) hypot (double, double);
extern float __attribute__((__cdecl__)) hypotf (float, float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) hypotl (long double, long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) powf (float, float);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double __attribute__((__cdecl__)) powl (long double, long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) sqrtf (float);
extern long double __attribute__((__cdecl__)) sqrtl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) erf (double);
extern float __attribute__((__cdecl__)) erff (float);
extern long double __attribute__((__cdecl__)) erfl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) erfc (double);
extern float __attribute__((__cdecl__)) erfcf (float);
extern long double __attribute__((__cdecl__)) erfcl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) lgamma (double);
extern float __attribute__((__cdecl__)) lgammaf (float);
extern long double __attribute__((__cdecl__)) lgammal (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) tgamma (double);
extern float __attribute__((__cdecl__)) tgammaf (float);
extern long double __attribute__((__cdecl__)) tgammal (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) ceilf (float);
extern long double __attribute__((__cdecl__)) ceill (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) floorf (float);
extern long double __attribute__((__cdecl__)) floorl (long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) nearbyint ( double);
extern float __attribute__((__cdecl__)) nearbyintf (float);
extern long double __attribute__((__cdecl__)) nearbyintl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) rint (double);
extern float __attribute__((__cdecl__)) rintf (float);
extern long double __attribute__((__cdecl__)) rintl (long double);
#pragma empty_line
#pragma empty_line
extern long __attribute__((__cdecl__)) lrint (double);
extern long __attribute__((__cdecl__)) lrintf (float);
extern long __attribute__((__cdecl__)) lrintl (long double);
#pragma empty_line
extern long long __attribute__((__cdecl__)) llrint (double);
extern long long __attribute__((__cdecl__)) llrintf (float);
extern long long __attribute__((__cdecl__)) llrintl (long double);
#pragma line 771 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) round (double);
extern float __attribute__((__cdecl__)) roundf (float);
extern long double __attribute__((__cdecl__)) roundl (long double);
#pragma empty_line
#pragma empty_line
extern long __attribute__((__cdecl__)) lround (double);
extern long __attribute__((__cdecl__)) lroundf (float);
extern long __attribute__((__cdecl__)) lroundl (long double);
#pragma empty_line
extern long long __attribute__((__cdecl__)) llround (double);
extern long long __attribute__((__cdecl__)) llroundf (float);
extern long long __attribute__((__cdecl__)) llroundl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) trunc (double);
extern float __attribute__((__cdecl__)) truncf (float);
extern long double __attribute__((__cdecl__)) truncl (long double);
#pragma empty_line
#pragma empty_line
extern float __attribute__((__cdecl__)) fmodf (float, float);
extern long double __attribute__((__cdecl__)) fmodl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) remainder (double, double);
extern float __attribute__((__cdecl__)) remainderf (float, float);
extern long double __attribute__((__cdecl__)) remainderl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) remquo(double, double, int *);
extern float __attribute__((__cdecl__)) remquof(float, float, int *);
extern long double __attribute__((__cdecl__)) remquol(long double, long double, int *);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) copysign (double, double);
extern float __attribute__((__cdecl__)) copysignf (float, float);
extern long double __attribute__((__cdecl__)) copysignl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) nan(const char *tagp);
extern float __attribute__((__cdecl__)) nanf(const char *tagp);
extern long double __attribute__((__cdecl__)) nanl(const char *tagp);
#pragma line 821 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/math.h" 3
extern double __attribute__((__cdecl__)) nextafter (double, double);
extern float __attribute__((__cdecl__)) nextafterf (float, float);
extern long double __attribute__((__cdecl__)) nextafterl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) nexttoward (double, long double);
extern float __attribute__((__cdecl__)) nexttowardf (float, long double);
extern long double __attribute__((__cdecl__)) nexttowardl (long double, long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fdim (double x, double y);
extern float __attribute__((__cdecl__)) fdimf (float x, float y);
extern long double __attribute__((__cdecl__)) fdiml (long double x, long double y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fmax (double, double);
extern float __attribute__((__cdecl__)) fmaxf (float, float);
extern long double __attribute__((__cdecl__)) fmaxl (long double, long double);
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fmin (double, double);
extern float __attribute__((__cdecl__)) fminf (float, float);
extern long double __attribute__((__cdecl__)) fminl (long double, long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) fma (double, double, double);
extern float __attribute__((__cdecl__)) fmaf (float, float, float);
extern long double __attribute__((__cdecl__)) fmal (long double, long double, long double);
#pragma line 35 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c" 2
#pragma line 1 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 1 3
#pragma line 24 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 3
#pragma line 1 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
#pragma line 212 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
#pragma line 324 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
#pragma line 25 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 2 3
#pragma line 36 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 3
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memchr (const void*, int, size_t) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memcmp (const void*, const void*, size_t) __attribute__ ((__pure__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memcpy (void*, const void*, size_t);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memmove (void*, const void*, size_t);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memset (void*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcat (char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strchr (const char*, int) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcmp (const char*, const char*) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcpy (char*, const char*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcspn (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strerror (int);
#pragma empty_line
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strlen (const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncat (char*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncmp (const char*, const char*, size_t) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncpy (char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strpbrk (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strrchr (const char*, int) __attribute__ ((__pure__));
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strspn (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strstr (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtok (char*, const char*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strxfrm (char*, const char*, size_t);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strerror (const char *);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _memccpy (void*, const void*, int, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _memicmp (const void*, const void*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strdup (const char*) __attribute__ ((__malloc__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strcmpi (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stricmp (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stricoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strlwr (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnicmp (const char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnset (char*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strrev (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strset (char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strupr (char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _swab (const char*, char*, size_t);
#pragma empty_line
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strncoll(const char*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnicoll(const char*, const char*, size_t);
#pragma line 90 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 3
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memccpy (void*, const void*, int, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memicmp (const void*, const void*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strdup (const char*) __attribute__ ((__malloc__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcmpi (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stricmp (const char*, const char*);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcasecmp (const char*, const char *);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stricoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strlwr (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strnicmp (const char*, const char*, size_t);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncasecmp (const char *, const char *, size_t);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strnset (char*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strrev (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strset (char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strupr (char*);
#pragma empty_line
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swab (const char*, char*, size_t);
#pragma line 126 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscat (wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcschr (const wchar_t*, wchar_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscpy (wchar_t*, const wchar_t*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscspn (const wchar_t*, const wchar_t*);
#pragma empty_line
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcslen (const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncat (wchar_t*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncmp(const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncpy(wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcspbrk(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsrchr(const wchar_t*, wchar_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsspn(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsstr(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstok(wchar_t*, const wchar_t*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsxfrm(wchar_t*, const wchar_t*, size_t);
#pragma line 152 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsdup (const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsicmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsicoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcslwr (wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnicmp (const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnset (wchar_t*, wchar_t, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsrev (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsset (wchar_t*, wchar_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsupr (wchar_t*);
#pragma empty_line
#pragma empty_line
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsncoll(const wchar_t*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnicoll(const wchar_t*, const wchar_t*, size_t);
#pragma line 173 "d:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/string.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscmpi (const wchar_t * __ws1, const wchar_t * __ws2);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsdup (const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsicmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsicoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcslwr (wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsnicmp (const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsnset (wchar_t*, wchar_t, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsrev (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsset (wchar_t*, wchar_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsupr (wchar_t*);
#pragma line 36 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c" 2
#pragma line 1 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.h" 1
#pragma line 77 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.h"
    void IIR_reset();
    void IIR_create(void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_process_F (float* const samples,
                         const int numSamples);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_process_S (short* const input,
                       short* output,
                          const short numSamples);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_makeLowPass (const float sampleRate,
                      const float frequency);
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_makeHighPass (const float sampleRate,
                       const float frequency);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_makeNotch (const float sampleRate,
                    const float cutOffFrequency,
                    const float r);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_makeLowShelf (const float sampleRate,
                       const float cutOffFrequency,
                       const float Q,
                       const float gainFactor);
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_makeHighShelf (const float sampleRate,
                        const float cutOffFrequency,
                        const float Q,
                        const float gainFactor);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_makePeakEQ (const float sampleRate,
                     const float centreFrequency,
                     const float Q,
                     const float gainFactor);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 float IIR_getCoeffFloat(int idx);
#pragma empty_line
#pragma empty_line
#pragma empty_line
 int IIR_getCoeffFixed(int idx);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void IIR_setCoefficients (float b0, float b1, float b2,
           float a0, float a1, float a2);
#pragma line 37 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c" 2
#pragma empty_line
const double double_Pi = 3.1415926535897932384626433832795;
#pragma empty_line
#pragma empty_line
inline float jmax (const float a, const float b) { return (a < b) ? b : a; }
#pragma empty_line
static float coefficients[6];
static int coef_fixed[6];
#pragma empty_line
static float x1_float, x2_float, y1_float, y2_float;
static int x1_fix, x2_fix, y1_fix, y2_fix;
#pragma empty_line
#pragma empty_line
void IIR_reset()
{
 short i;
    x1_float = 0; x1_fix = 0;
    x2_float = 0; x2_fix = 0;
    y1_float = 0; y1_fix = 0;
    y2_float = 0; y2_fix = 0;
#pragma empty_line
    for (i = 0; i < 6; i++)
    {
  coef_fixed[i] = 0;
  coefficients[i] = 0;
    }
#pragma empty_line
#pragma empty_line
    coefficients[0] = 1;
    coef_fixed[0] = ((int)(1.0*0x7fff));
}
#pragma empty_line
void IIR_create(void)
{
 IIR_reset();
}
#pragma empty_line
void IIR_process_F (float* const samples,
                                const int numSamples)
{
 int i;
    for (i = 0; i < numSamples; ++i)
    {
        const float in = samples[i];
#pragma empty_line
        float out = coefficients[0] * in
                     + coefficients[1] * x1_float
                     + coefficients[2] * x2_float
                     - coefficients[4] * y1_float
                     - coefficients[5] * y2_float;
#pragma empty_line
        if (! (out < -1.0e-8 || out > 1.0e-8))
            out = 0;
#pragma empty_line
        x2_float = x1_float;
        x1_float = in;
        y2_float = y1_float;
        y1_float = out;
#pragma empty_line
        samples[i] = out;
    }
}
#pragma empty_line
#pragma empty_line
void IIR_process_S (short* const samples,
                         short* output,
                         const short numSamples)
{
 short i;
    for (i = 0; i < numSamples; ++i)
    {
        const int in = samples[i];
#pragma empty_line
        int out = coef_fixed[0] * in
                     + coef_fixed[1] * x1_fix
                     + coef_fixed[2] * x2_fix
                     - coef_fixed[4] * y1_fix
                     - coef_fixed[5] * y2_fix;
#pragma empty_line
#pragma empty_line
  out >>= (16 -1);
#pragma empty_line
        x2_fix = x1_fix;
        x1_fix = in;
        y2_fix = y1_fix;
        y1_fix = out;
#pragma empty_line
        output[i] = out;
    }
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
void IIR_makeLowPass (const float sampleRate,
                             const float frequency)
{
    const float n = 1.0 / tan (double_Pi * frequency / sampleRate);
    const float nSquared = n * n;
    const float c1 = 1.0 / (1.0 + sqrt (2.0) * n + nSquared);
#pragma empty_line
    IIR_setCoefficients (c1,
                     c1 * 2.0f,
                     c1,
                     1.0,
                     c1 * 2.0 * (1.0 - nSquared),
                     c1 * (1.0 - sqrt (2.0) * n + nSquared));
}
#pragma empty_line
void IIR_makeHighPass (const float sampleRate,
                              const float frequency)
{
    const float n = tan (double_Pi * frequency / sampleRate);
    const float nSquared = n * n;
    const float c1 = 1.0 / (1.0 + sqrt (2.0) * n + nSquared);
#pragma empty_line
    IIR_setCoefficients (c1,
                     c1 * -2.0f,
                     c1,
                     1.0,
                     c1 * 2.0 * (nSquared - 1.0),
                     c1 * (1.0 - sqrt (2.0) * n + nSquared));
}
#pragma empty_line
void IIR_makeNotch (const float sampleRate,
                   const float cutOffFrequency,
                   const float r)
{
    const float w0 = 2 * double_Pi * (cutOffFrequency/ sampleRate);
#pragma empty_line
    IIR_setCoefficients(1,
                 -2 * cos(w0),
                 1,
                 1,
                 -2 * r * cos(w0),
                 r * r);
}
#pragma empty_line
#pragma empty_line
void IIR_makeLowShelf (const float sampleRate,
                              const float cutOffFrequency,
                              const float Q,
                              const float gainFactor)
{
    const float A = jmax (0.0f, gainFactor);
    const float aminus1 = A - 1.0;
    const float aplus1 = A + 1.0;
    const float omega = (double_Pi * 2.0 * jmax (cutOffFrequency, 2.0)) / sampleRate;
    const float coso = cos (omega);
    const float beta = sin (omega) * sqrt (A) / Q;
    const float aminus1TimesCoso = aminus1 * coso;
#pragma empty_line
    IIR_setCoefficients (A * (aplus1 - aminus1TimesCoso + beta),
                     A * 2.0 * (aminus1 - aplus1 * coso),
                     A * (aplus1 - aminus1TimesCoso - beta),
                     aplus1 + aminus1TimesCoso + beta,
                     -2.0 * (aminus1 + aplus1 * coso),
                     aplus1 + aminus1TimesCoso - beta);
}
#pragma empty_line
void IIR_makeHighShelf (const float sampleRate,
                               const float cutOffFrequency,
                               const float Q,
                               const float gainFactor)
{
    const float A = jmax (0.0f, gainFactor);
    const float aminus1 = A - 1.0;
    const float aplus1 = A + 1.0;
    const float omega = (double_Pi * 2.0 * jmax (cutOffFrequency, 2.0)) / sampleRate;
    const float coso = cos (omega);
    const float beta = sin (omega) * sqrt (A) / Q;
    const float aminus1TimesCoso = aminus1 * coso;
#pragma empty_line
    IIR_setCoefficients (A * (aplus1 + aminus1TimesCoso + beta),
                     A * -2.0 * (aminus1 + aplus1 * coso),
                     A * (aplus1 + aminus1TimesCoso - beta),
                     aplus1 - aminus1TimesCoso + beta,
                     2.0 * (aminus1 - aplus1 * coso),
                     aplus1 - aminus1TimesCoso - beta);
}
#pragma empty_line
void IIR_makePeakEQ (const float sampleRate,
                            const float centreFrequency,
                            const float Q,
                            const float gainFactor)
{
    const float A = jmax (0.0f, gainFactor);
    const float omega = (double_Pi * 2.0 * jmax (centreFrequency, 2.0)) / sampleRate;
    const float alpha = 0.5 * sin (omega) / Q;
    const float c2 = -2.0 * cos (omega);
    const float alphaTimesA = alpha * A;
    const float alphaOverA = alpha / A;
#pragma empty_line
    IIR_setCoefficients (1.0 + alphaTimesA,
                     c2,
                     1.0 - alphaTimesA,
                     1.0 + alphaOverA,
                     c2,
                     1.0 - alphaOverA);
}
#pragma empty_line
#pragma empty_line
void IIR_setCoefficients (float b0,
         float b1,
         float b2,
         float a0,
         float a1,
         float a2)
{
    const float a = 1.0 / a0;
#pragma empty_line
    int i;
#pragma empty_line
    b0 *= a;
    b1 *= a;
    b2 *= a;
    a1 *= a;
    a2 *= a;
#pragma empty_line
    coefficients[0] = b0;
    coefficients[1] = b1;
    coefficients[2] = b2;
    coefficients[3] = a0;
    coefficients[4] = a1;
    coefficients[5] = a2;
#pragma line 280 "D:/Xilinx/Assignment_2/EQ_HLS/EQFilter.c"
 for (i = 0; i < 6; i++)
 {
  coef_fixed[i] = ((int)(coefficients[i]*0x7fff));
 }
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
float IIR_getCoeffFloat(int idx) { return coefficients[idx]; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
int IIR_getCoeffFixed(int idx) { return coef_fixed[idx]; }
