#ifndef SCIPY_LINALG_BLAS_FORTRAN_WRAPPERS_H
#define SCIPY_LINALG_BLAS_FORTRAN_WRAPPERS_H
#include "fortran_defs.h"

// Mimic the complex number definitions from cython.
#if !defined(_SCIPY_LINALG_CCOMPLEX)
  #if defined(__cplusplus)
    #define _SCIPY_LINALG_CCOMPLEX 1
  #elif defined(_Complex_I)
    #define _SCIPY_LINALG_CCOMPLEX 1
  #else
    #define _SCIPY_LINALG_CCOMPLEX 0
  #endif
#endif

#if _SCIPY_LINALG_CCOMPLEX
  #ifdef __cplusplus
    #include <complex>
  #else
    #include <complex.h>
  #endif
#endif

#if _SCIPY_LINALG_CCOMPLEX && !defined(__cplusplus) && defined(__sun__) && defined(__GNUC__)
  #undef _Complex_I
  #define _Complex_I 1.0fj
#endif

#if _SCIPY_LINALG_CCOMPLEX
  #ifdef __cplusplus
    typedef ::std::complex< float > _scipy_linalg_float_complex;
  #else
    typedef float _Complex _scipy_linalg_float_complex;
  #endif
#else
    typedef struct { float real, imag; } _scipy_linalg_float_complex;
#endif

#if _SCIPY_LINALG_CCOMPLEX
  #ifdef __cplusplus
    typedef ::std::complex< double > _scipy_linalg_double_complex;
  #else
    typedef double _Complex _scipy_linalg_double_complex;
  #endif
#else
    typedef struct { double real, imag; } _scipy_linalg_double_complex;
#endif

#ifdef __cplusplus
extern "C" {
#endif

void F_FUNC(cdotcwrp, CDOTCWRP)(_scipy_linalg_float_complex *ret, int *n, _scipy_linalg_float_complex *cx, int *incx, _scipy_linalg_float_complex *cy, int *incy);
void F_FUNC(cdotuwrp, CDOTUWRP)(_scipy_linalg_float_complex *ret, int *n, _scipy_linalg_float_complex *cx, int *incx, _scipy_linalg_float_complex *cy, int *incy);
void F_FUNC(dasumwrp, DASUMWRP)(double *ret, int *n, double *dx, int *incx);
void F_FUNC(dcabs1wrp, DCABS1WRP)(double *ret, _scipy_linalg_double_complex *z);
void F_FUNC(ddotwrp, DDOTWRP)(double *ret, int *n, double *dx, int *incx, double *dy, int *incy);
void F_FUNC(dnrm2wrp, DNRM2WRP)(double *ret, int *n, double *x, int *incx);
void F_FUNC(dsdotwrp, DSDOTWRP)(double *ret, int *n, float *sx, int *incx, float *sy, int *incy);
void F_FUNC(dzasumwrp, DZASUMWRP)(double *ret, int *n, _scipy_linalg_double_complex *zx, int *incx);
void F_FUNC(dznrm2wrp, DZNRM2WRP)(double *ret, int *n, _scipy_linalg_double_complex *x, int *incx);
void F_FUNC(icamaxwrp, ICAMAXWRP)(int *ret, int *n, _scipy_linalg_float_complex *cx, int *incx);
void F_FUNC(idamaxwrp, IDAMAXWRP)(int *ret, int *n, double *dx, int *incx);
void F_FUNC(isamaxwrp, ISAMAXWRP)(int *ret, int *n, float *sx, int *incx);
void F_FUNC(izamaxwrp, IZAMAXWRP)(int *ret, int *n, _scipy_linalg_double_complex *zx, int *incx);
void F_FUNC(lsamewrp, LSAMEWRP)(int *ret, char *ca, char *cb);
void F_FUNC(sasumwrp, SASUMWRP)(float *ret, int *n, float *sx, int *incx);
void F_FUNC(scasumwrp, SCASUMWRP)(float *ret, int *n, _scipy_linalg_float_complex *cx, int *incx);
void F_FUNC(scnrm2wrp, SCNRM2WRP)(float *ret, int *n, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(sdotwrp, SDOTWRP)(float *ret, int *n, float *sx, int *incx, float *sy, int *incy);
void F_FUNC(sdsdotwrp, SDSDOTWRP)(float *ret, int *n, float *sb, float *sx, int *incx, float *sy, int *incy);
void F_FUNC(snrm2wrp, SNRM2WRP)(float *ret, int *n, float *x, int *incx);
void F_FUNC(zdotcwrp, ZDOTCWRP)(_scipy_linalg_double_complex *ret, int *n, _scipy_linalg_double_complex *zx, int *incx, _scipy_linalg_double_complex *zy, int *incy);
void F_FUNC(zdotuwrp, ZDOTUWRP)(_scipy_linalg_double_complex *ret, int *n, _scipy_linalg_double_complex *zx, int *incx, _scipy_linalg_double_complex *zy, int *incy);

void F_FUNC(caxpy,CAXPY)(int *n, _scipy_linalg_float_complex *ca, _scipy_linalg_float_complex *cx, int *incx, _scipy_linalg_float_complex *cy, int *incy);
void F_FUNC(ccopy,CCOPY)(int *n, _scipy_linalg_float_complex *cx, int *incx, _scipy_linalg_float_complex *cy, int *incy);
void F_FUNC(cgbmv,CGBMV)(char *trans, int *m, int *n, int *kl, int *ku, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *y, int *incy);
void F_FUNC(cgemm,CGEMM)(char *transa, char *transb, int *m, int *n, int *k, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(cgemv,CGEMV)(char *trans, int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *y, int *incy);
void F_FUNC(cgerc,CGERC)(int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *y, int *incy, _scipy_linalg_float_complex *a, int *lda);
void F_FUNC(cgeru,CGERU)(int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *y, int *incy, _scipy_linalg_float_complex *a, int *lda);
void F_FUNC(chbmv,CHBMV)(char *uplo, int *n, int *k, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *y, int *incy);
void F_FUNC(chemm,CHEMM)(char *side, char *uplo, int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(chemv,CHEMV)(char *uplo, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *y, int *incy);
void F_FUNC(cher,CHER)(char *uplo, int *n, float *alpha, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *a, int *lda);
void F_FUNC(cher2,CHER2)(char *uplo, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *y, int *incy, _scipy_linalg_float_complex *a, int *lda);
void F_FUNC(cher2k,CHER2K)(char *uplo, char *trans, int *n, int *k, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb, float *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(cherk,CHERK)(char *uplo, char *trans, int *n, int *k, float *alpha, _scipy_linalg_float_complex *a, int *lda, float *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(chpmv,CHPMV)(char *uplo, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *ap, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *y, int *incy);
void F_FUNC(chpr,CHPR)(char *uplo, int *n, float *alpha, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *ap);
void F_FUNC(chpr2,CHPR2)(char *uplo, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *x, int *incx, _scipy_linalg_float_complex *y, int *incy, _scipy_linalg_float_complex *ap);
void F_FUNC(crotg,CROTG)(_scipy_linalg_float_complex *ca, _scipy_linalg_float_complex *cb, float *c, _scipy_linalg_float_complex *s);
void F_FUNC(cscal,CSCAL)(int *n, _scipy_linalg_float_complex *ca, _scipy_linalg_float_complex *cx, int *incx);
void F_FUNC(csrot,CSROT)(int *n, _scipy_linalg_float_complex *cx, int *incx, _scipy_linalg_float_complex *cy, int *incy, float *c, float *s);
void F_FUNC(csscal,CSSCAL)(int *n, float *sa, _scipy_linalg_float_complex *cx, int *incx);
void F_FUNC(cswap,CSWAP)(int *n, _scipy_linalg_float_complex *cx, int *incx, _scipy_linalg_float_complex *cy, int *incy);
void F_FUNC(csymm,CSYMM)(char *side, char *uplo, int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(csyr2k,CSYR2K)(char *uplo, char *trans, int *n, int *k, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(csyrk,CSYRK)(char *uplo, char *trans, int *n, int *k, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *beta, _scipy_linalg_float_complex *c, int *ldc);
void F_FUNC(ctbmv,CTBMV)(char *uplo, char *trans, char *diag, int *n, int *k, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(ctbsv,CTBSV)(char *uplo, char *trans, char *diag, int *n, int *k, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(ctpmv,CTPMV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_float_complex *ap, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(ctpsv,CTPSV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_float_complex *ap, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(ctrmm,CTRMM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb);
void F_FUNC(ctrmv,CTRMV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(ctrsm,CTRSM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, _scipy_linalg_float_complex *alpha, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *b, int *ldb);
void F_FUNC(ctrsv,CTRSV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_float_complex *a, int *lda, _scipy_linalg_float_complex *x, int *incx);
void F_FUNC(daxpy,DAXPY)(int *n, double *da, double *dx, int *incx, double *dy, int *incy);
void F_FUNC(dcopy,DCOPY)(int *n, double *dx, int *incx, double *dy, int *incy);
void F_FUNC(dgbmv,DGBMV)(char *trans, int *m, int *n, int *kl, int *ku, double *alpha, double *a, int *lda, double *x, int *incx, double *beta, double *y, int *incy);
void F_FUNC(dgemm,DGEMM)(char *transa, char *transb, int *m, int *n, int *k, double *alpha, double *a, int *lda, double *b, int *ldb, double *beta, double *c, int *ldc);
void F_FUNC(dgemv,DGEMV)(char *trans, int *m, int *n, double *alpha, double *a, int *lda, double *x, int *incx, double *beta, double *y, int *incy);
void F_FUNC(dger,DGER)(int *m, int *n, double *alpha, double *x, int *incx, double *y, int *incy, double *a, int *lda);
void F_FUNC(drot,DROT)(int *n, double *dx, int *incx, double *dy, int *incy, double *c, double *s);
void F_FUNC(drotg,DROTG)(double *da, double *db, double *c, double *s);
void F_FUNC(drotm,DROTM)(int *n, double *dx, int *incx, double *dy, int *incy, double *dparam);
void F_FUNC(drotmg,DROTMG)(double *dd1, double *dd2, double *dx1, double *dy1, double *dparam);
void F_FUNC(dsbmv,DSBMV)(char *uplo, int *n, int *k, double *alpha, double *a, int *lda, double *x, int *incx, double *beta, double *y, int *incy);
void F_FUNC(dscal,DSCAL)(int *n, double *da, double *dx, int *incx);
void F_FUNC(dspmv,DSPMV)(char *uplo, int *n, double *alpha, double *ap, double *x, int *incx, double *beta, double *y, int *incy);
void F_FUNC(dspr,DSPR)(char *uplo, int *n, double *alpha, double *x, int *incx, double *ap);
void F_FUNC(dspr2,DSPR2)(char *uplo, int *n, double *alpha, double *x, int *incx, double *y, int *incy, double *ap);
void F_FUNC(dswap,DSWAP)(int *n, double *dx, int *incx, double *dy, int *incy);
void F_FUNC(dsymm,DSYMM)(char *side, char *uplo, int *m, int *n, double *alpha, double *a, int *lda, double *b, int *ldb, double *beta, double *c, int *ldc);
void F_FUNC(dsymv,DSYMV)(char *uplo, int *n, double *alpha, double *a, int *lda, double *x, int *incx, double *beta, double *y, int *incy);
void F_FUNC(dsyr,DSYR)(char *uplo, int *n, double *alpha, double *x, int *incx, double *a, int *lda);
void F_FUNC(dsyr2,DSYR2)(char *uplo, int *n, double *alpha, double *x, int *incx, double *y, int *incy, double *a, int *lda);
void F_FUNC(dsyr2k,DSYR2K)(char *uplo, char *trans, int *n, int *k, double *alpha, double *a, int *lda, double *b, int *ldb, double *beta, double *c, int *ldc);
void F_FUNC(dsyrk,DSYRK)(char *uplo, char *trans, int *n, int *k, double *alpha, double *a, int *lda, double *beta, double *c, int *ldc);
void F_FUNC(dtbmv,DTBMV)(char *uplo, char *trans, char *diag, int *n, int *k, double *a, int *lda, double *x, int *incx);
void F_FUNC(dtbsv,DTBSV)(char *uplo, char *trans, char *diag, int *n, int *k, double *a, int *lda, double *x, int *incx);
void F_FUNC(dtpmv,DTPMV)(char *uplo, char *trans, char *diag, int *n, double *ap, double *x, int *incx);
void F_FUNC(dtpsv,DTPSV)(char *uplo, char *trans, char *diag, int *n, double *ap, double *x, int *incx);
void F_FUNC(dtrmm,DTRMM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, double *alpha, double *a, int *lda, double *b, int *ldb);
void F_FUNC(dtrmv,DTRMV)(char *uplo, char *trans, char *diag, int *n, double *a, int *lda, double *x, int *incx);
void F_FUNC(dtrsm,DTRSM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, double *alpha, double *a, int *lda, double *b, int *ldb);
void F_FUNC(dtrsv,DTRSV)(char *uplo, char *trans, char *diag, int *n, double *a, int *lda, double *x, int *incx);
void F_FUNC(saxpy,SAXPY)(int *n, float *sa, float *sx, int *incx, float *sy, int *incy);
void F_FUNC(scopy,SCOPY)(int *n, float *sx, int *incx, float *sy, int *incy);
void F_FUNC(sgbmv,SGBMV)(char *trans, int *m, int *n, int *kl, int *ku, float *alpha, float *a, int *lda, float *x, int *incx, float *beta, float *y, int *incy);
void F_FUNC(sgemm,SGEMM)(char *transa, char *transb, int *m, int *n, int *k, float *alpha, float *a, int *lda, float *b, int *ldb, float *beta, float *c, int *ldc);
void F_FUNC(sgemv,SGEMV)(char *trans, int *m, int *n, float *alpha, float *a, int *lda, float *x, int *incx, float *beta, float *y, int *incy);
void F_FUNC(sger,SGER)(int *m, int *n, float *alpha, float *x, int *incx, float *y, int *incy, float *a, int *lda);
void F_FUNC(srot,SROT)(int *n, float *sx, int *incx, float *sy, int *incy, float *c, float *s);
void F_FUNC(srotg,SROTG)(float *sa, float *sb, float *c, float *s);
void F_FUNC(srotm,SROTM)(int *n, float *sx, int *incx, float *sy, int *incy, float *sparam);
void F_FUNC(srotmg,SROTMG)(float *sd1, float *sd2, float *sx1, float *sy1, float *sparam);
void F_FUNC(ssbmv,SSBMV)(char *uplo, int *n, int *k, float *alpha, float *a, int *lda, float *x, int *incx, float *beta, float *y, int *incy);
void F_FUNC(sscal,SSCAL)(int *n, float *sa, float *sx, int *incx);
void F_FUNC(sspmv,SSPMV)(char *uplo, int *n, float *alpha, float *ap, float *x, int *incx, float *beta, float *y, int *incy);
void F_FUNC(sspr,SSPR)(char *uplo, int *n, float *alpha, float *x, int *incx, float *ap);
void F_FUNC(sspr2,SSPR2)(char *uplo, int *n, float *alpha, float *x, int *incx, float *y, int *incy, float *ap);
void F_FUNC(sswap,SSWAP)(int *n, float *sx, int *incx, float *sy, int *incy);
void F_FUNC(ssymm,SSYMM)(char *side, char *uplo, int *m, int *n, float *alpha, float *a, int *lda, float *b, int *ldb, float *beta, float *c, int *ldc);
void F_FUNC(ssymv,SSYMV)(char *uplo, int *n, float *alpha, float *a, int *lda, float *x, int *incx, float *beta, float *y, int *incy);
void F_FUNC(ssyr,SSYR)(char *uplo, int *n, float *alpha, float *x, int *incx, float *a, int *lda);
void F_FUNC(ssyr2,SSYR2)(char *uplo, int *n, float *alpha, float *x, int *incx, float *y, int *incy, float *a, int *lda);
void F_FUNC(ssyr2k,SSYR2K)(char *uplo, char *trans, int *n, int *k, float *alpha, float *a, int *lda, float *b, int *ldb, float *beta, float *c, int *ldc);
void F_FUNC(ssyrk,SSYRK)(char *uplo, char *trans, int *n, int *k, float *alpha, float *a, int *lda, float *beta, float *c, int *ldc);
void F_FUNC(stbmv,STBMV)(char *uplo, char *trans, char *diag, int *n, int *k, float *a, int *lda, float *x, int *incx);
void F_FUNC(stbsv,STBSV)(char *uplo, char *trans, char *diag, int *n, int *k, float *a, int *lda, float *x, int *incx);
void F_FUNC(stpmv,STPMV)(char *uplo, char *trans, char *diag, int *n, float *ap, float *x, int *incx);
void F_FUNC(stpsv,STPSV)(char *uplo, char *trans, char *diag, int *n, float *ap, float *x, int *incx);
void F_FUNC(strmm,STRMM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, float *alpha, float *a, int *lda, float *b, int *ldb);
void F_FUNC(strmv,STRMV)(char *uplo, char *trans, char *diag, int *n, float *a, int *lda, float *x, int *incx);
void F_FUNC(strsm,STRSM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, float *alpha, float *a, int *lda, float *b, int *ldb);
void F_FUNC(strsv,STRSV)(char *uplo, char *trans, char *diag, int *n, float *a, int *lda, float *x, int *incx);
void F_FUNC(xerbla,XERBLA)(char *srname, int *info);
void F_FUNC(zaxpy,ZAXPY)(int *n, _scipy_linalg_double_complex *za, _scipy_linalg_double_complex *zx, int *incx, _scipy_linalg_double_complex *zy, int *incy);
void F_FUNC(zcopy,ZCOPY)(int *n, _scipy_linalg_double_complex *zx, int *incx, _scipy_linalg_double_complex *zy, int *incy);
void F_FUNC(zdrot,ZDROT)(int *n, _scipy_linalg_double_complex *cx, int *incx, _scipy_linalg_double_complex *cy, int *incy, double *c, double *s);
void F_FUNC(zdscal,ZDSCAL)(int *n, double *da, _scipy_linalg_double_complex *zx, int *incx);
void F_FUNC(zgbmv,ZGBMV)(char *trans, int *m, int *n, int *kl, int *ku, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *y, int *incy);
void F_FUNC(zgemm,ZGEMM)(char *transa, char *transb, int *m, int *n, int *k, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(zgemv,ZGEMV)(char *trans, int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *y, int *incy);
void F_FUNC(zgerc,ZGERC)(int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *y, int *incy, _scipy_linalg_double_complex *a, int *lda);
void F_FUNC(zgeru,ZGERU)(int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *y, int *incy, _scipy_linalg_double_complex *a, int *lda);
void F_FUNC(zhbmv,ZHBMV)(char *uplo, int *n, int *k, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *y, int *incy);
void F_FUNC(zhemm,ZHEMM)(char *side, char *uplo, int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(zhemv,ZHEMV)(char *uplo, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *y, int *incy);
void F_FUNC(zher,ZHER)(char *uplo, int *n, double *alpha, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *a, int *lda);
void F_FUNC(zher2,ZHER2)(char *uplo, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *y, int *incy, _scipy_linalg_double_complex *a, int *lda);
void F_FUNC(zher2k,ZHER2K)(char *uplo, char *trans, int *n, int *k, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb, double *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(zherk,ZHERK)(char *uplo, char *trans, int *n, int *k, double *alpha, _scipy_linalg_double_complex *a, int *lda, double *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(zhpmv,ZHPMV)(char *uplo, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *ap, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *y, int *incy);
void F_FUNC(zhpr,ZHPR)(char *uplo, int *n, double *alpha, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *ap);
void F_FUNC(zhpr2,ZHPR2)(char *uplo, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *x, int *incx, _scipy_linalg_double_complex *y, int *incy, _scipy_linalg_double_complex *ap);
void F_FUNC(zrotg,ZROTG)(_scipy_linalg_double_complex *ca, _scipy_linalg_double_complex *cb, double *c, _scipy_linalg_double_complex *s);
void F_FUNC(zscal,ZSCAL)(int *n, _scipy_linalg_double_complex *za, _scipy_linalg_double_complex *zx, int *incx);
void F_FUNC(zswap,ZSWAP)(int *n, _scipy_linalg_double_complex *zx, int *incx, _scipy_linalg_double_complex *zy, int *incy);
void F_FUNC(zsymm,ZSYMM)(char *side, char *uplo, int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(zsyr2k,ZSYR2K)(char *uplo, char *trans, int *n, int *k, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(zsyrk,ZSYRK)(char *uplo, char *trans, int *n, int *k, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *beta, _scipy_linalg_double_complex *c, int *ldc);
void F_FUNC(ztbmv,ZTBMV)(char *uplo, char *trans, char *diag, int *n, int *k, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx);
void F_FUNC(ztbsv,ZTBSV)(char *uplo, char *trans, char *diag, int *n, int *k, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx);
void F_FUNC(ztpmv,ZTPMV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_double_complex *ap, _scipy_linalg_double_complex *x, int *incx);
void F_FUNC(ztpsv,ZTPSV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_double_complex *ap, _scipy_linalg_double_complex *x, int *incx);
void F_FUNC(ztrmm,ZTRMM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb);
void F_FUNC(ztrmv,ZTRMV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx);
void F_FUNC(ztrsm,ZTRSM)(char *side, char *uplo, char *transa, char *diag, int *m, int *n, _scipy_linalg_double_complex *alpha, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *b, int *ldb);
void F_FUNC(ztrsv,ZTRSV)(char *uplo, char *trans, char *diag, int *n, _scipy_linalg_double_complex *a, int *lda, _scipy_linalg_double_complex *x, int *incx);

#ifdef __cplusplus
}
#endif
#endif
