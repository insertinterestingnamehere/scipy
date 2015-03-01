# cython: boundscheck = False
# cython: wraparound = False
# cython: cdivision = True

"""
BLAS Functions for Cython
=========================

Usable from Cython via::

    cimport scipy.linalg.cython_blas

Raw function pointers (Fortran-style pointer arguments):

- caxpy
- ccopy
- cdotc
- cdotu
- cgbmv
- cgemm
- cgemv
- cgerc
- cgeru
- chbmv
- chemm
- chemv
- cher
- cher2
- cher2k
- cherk
- chpmv
- chpr
- chpr2
- crotg
- cscal
- csrot
- csscal
- cswap
- csymm
- csyr2k
- csyrk
- ctbmv
- ctbsv
- ctpmv
- ctpsv
- ctrmm
- ctrmv
- ctrsm
- ctrsv
- dasum
- daxpy
- dcabs1
- dcopy
- ddot
- dgbmv
- dgemm
- dgemv
- dger
- dnrm2
- drot
- drotg
- drotm
- drotmg
- dsbmv
- dscal
- dsdot
- dspmv
- dspr
- dspr2
- dswap
- dsymm
- dsymv
- dsyr
- dsyr2
- dsyr2k
- dsyrk
- dtbmv
- dtbsv
- dtpmv
- dtpsv
- dtrmm
- dtrmv
- dtrsm
- dtrsv
- dzasum
- dznrm2
- icamax
- idamax
- isamax
- izamax
- lsame
- sasum
- saxpy
- scasum
- scnrm2
- scopy
- sdot
- sdsdot
- sgbmv
- sgemm
- sgemv
- sger
- snrm2
- srot
- srotg
- srotm
- srotmg
- ssbmv
- sscal
- sspmv
- sspr
- sspr2
- sswap
- ssymm
- ssymv
- ssyr
- ssyr2
- ssyr2k
- ssyrk
- stbmv
- stbsv
- stpmv
- stpsv
- strmm
- strmv
- strsm
- strsv
- xerbla
- zaxpy
- zcopy
- zdotc
- zdotu
- zdrot
- zdscal
- zgbmv
- zgemm
- zgemv
- zgerc
- zgeru
- zhbmv
- zhemm
- zhemv
- zher
- zher2
- zher2k
- zherk
- zhpmv
- zhpr
- zhpr2
- zrotg
- zscal
- zswap
- zsymm
- zsyr2k
- zsyrk
- ztbmv
- ztbsv
- ztpmv
- ztpsv
- ztrmm
- ztrmv
- ztrsm
- ztrsv


"""

cdef extern from "fortran_defs.h":
    pass

ctypedef void _wcdotc_t(c *out, int *n, c *cx, int *incx, c *cy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cdotc "F_FUNC(cdotcwrp, CDOTCWRP)"(c *out, int *n, c *cx, int *incx, c *cy, int *incy) nogil
cdef c _wrap_cdotc(int *n, c *cx, int *incx, c *cy, int *incy) nogil:
    cdef c out
    _fortran_cdotc(&out, n, cx, incx, cy, incy)
    return out
cdef cdotc_t *cdotc_f = &_wrap_cdotc

ctypedef void _wcdotu_t(c *out, int *n, c *cx, int *incx, c *cy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cdotu "F_FUNC(cdotuwrp, CDOTUWRP)"(c *out, int *n, c *cx, int *incx, c *cy, int *incy) nogil
cdef c _wrap_cdotu(int *n, c *cx, int *incx, c *cy, int *incy) nogil:
    cdef c out
    _fortran_cdotu(&out, n, cx, incx, cy, incy)
    return out
cdef cdotu_t *cdotu_f = &_wrap_cdotu

ctypedef void _wdasum_t(d *out, int *n, d *dx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dasum "F_FUNC(dasumwrp, DASUMWRP)"(d *out, int *n, d *dx, int *incx) nogil
cdef d _wrap_dasum(int *n, d *dx, int *incx) nogil:
    cdef d out
    _fortran_dasum(&out, n, dx, incx)
    return out
cdef dasum_t *dasum_f = &_wrap_dasum

ctypedef void _wdcabs1_t(d *out, z *z) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dcabs1 "F_FUNC(dcabs1wrp, DCABS1WRP)"(d *out, z *z) nogil
cdef d _wrap_dcabs1(z *z) nogil:
    cdef d out
    _fortran_dcabs1(&out, z)
    return out
cdef dcabs1_t *dcabs1_f = &_wrap_dcabs1

ctypedef void _wddot_t(d *out, int *n, d *dx, int *incx, d *dy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ddot "F_FUNC(ddotwrp, DDOTWRP)"(d *out, int *n, d *dx, int *incx, d *dy, int *incy) nogil
cdef d _wrap_ddot(int *n, d *dx, int *incx, d *dy, int *incy) nogil:
    cdef d out
    _fortran_ddot(&out, n, dx, incx, dy, incy)
    return out
cdef ddot_t *ddot_f = &_wrap_ddot

ctypedef void _wdnrm2_t(d *out, int *n, d *x, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dnrm2 "F_FUNC(dnrm2wrp, DNRM2WRP)"(d *out, int *n, d *x, int *incx) nogil
cdef d _wrap_dnrm2(int *n, d *x, int *incx) nogil:
    cdef d out
    _fortran_dnrm2(&out, n, x, incx)
    return out
cdef dnrm2_t *dnrm2_f = &_wrap_dnrm2

ctypedef void _wdsdot_t(d *out, int *n, s *sx, int *incx, s *sy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsdot "F_FUNC(dsdotwrp, DSDOTWRP)"(d *out, int *n, s *sx, int *incx, s *sy, int *incy) nogil
cdef d _wrap_dsdot(int *n, s *sx, int *incx, s *sy, int *incy) nogil:
    cdef d out
    _fortran_dsdot(&out, n, sx, incx, sy, incy)
    return out
cdef dsdot_t *dsdot_f = &_wrap_dsdot

ctypedef void _wdzasum_t(d *out, int *n, z *zx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dzasum "F_FUNC(dzasumwrp, DZASUMWRP)"(d *out, int *n, z *zx, int *incx) nogil
cdef d _wrap_dzasum(int *n, z *zx, int *incx) nogil:
    cdef d out
    _fortran_dzasum(&out, n, zx, incx)
    return out
cdef dzasum_t *dzasum_f = &_wrap_dzasum

ctypedef void _wdznrm2_t(d *out, int *n, z *x, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dznrm2 "F_FUNC(dznrm2wrp, DZNRM2WRP)"(d *out, int *n, z *x, int *incx) nogil
cdef d _wrap_dznrm2(int *n, z *x, int *incx) nogil:
    cdef d out
    _fortran_dznrm2(&out, n, x, incx)
    return out
cdef dznrm2_t *dznrm2_f = &_wrap_dznrm2

ctypedef void _wicamax_t(int *out, int *n, c *cx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_icamax "F_FUNC(icamaxwrp, ICAMAXWRP)"(int *out, int *n, c *cx, int *incx) nogil
cdef int _wrap_icamax(int *n, c *cx, int *incx) nogil:
    cdef int out
    _fortran_icamax(&out, n, cx, incx)
    return out
cdef icamax_t *icamax_f = &_wrap_icamax

ctypedef void _widamax_t(int *out, int *n, d *dx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_idamax "F_FUNC(idamaxwrp, IDAMAXWRP)"(int *out, int *n, d *dx, int *incx) nogil
cdef int _wrap_idamax(int *n, d *dx, int *incx) nogil:
    cdef int out
    _fortran_idamax(&out, n, dx, incx)
    return out
cdef idamax_t *idamax_f = &_wrap_idamax

ctypedef void _wisamax_t(int *out, int *n, s *sx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_isamax "F_FUNC(isamaxwrp, ISAMAXWRP)"(int *out, int *n, s *sx, int *incx) nogil
cdef int _wrap_isamax(int *n, s *sx, int *incx) nogil:
    cdef int out
    _fortran_isamax(&out, n, sx, incx)
    return out
cdef isamax_t *isamax_f = &_wrap_isamax

ctypedef void _wizamax_t(int *out, int *n, z *zx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_izamax "F_FUNC(izamaxwrp, IZAMAXWRP)"(int *out, int *n, z *zx, int *incx) nogil
cdef int _wrap_izamax(int *n, z *zx, int *incx) nogil:
    cdef int out
    _fortran_izamax(&out, n, zx, incx)
    return out
cdef izamax_t *izamax_f = &_wrap_izamax

ctypedef void _wlsame_t(bint *out, char *ca, char *cb) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_lsame "F_FUNC(lsamewrp, LSAMEWRP)"(bint *out, char *ca, char *cb) nogil
cdef bint _wrap_lsame(char *ca, char *cb) nogil:
    cdef bint out
    _fortran_lsame(&out, ca, cb)
    return out
cdef lsame_t *lsame_f = &_wrap_lsame

ctypedef void _wsasum_t(s *out, int *n, s *sx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sasum "F_FUNC(sasumwrp, SASUMWRP)"(s *out, int *n, s *sx, int *incx) nogil
cdef s _wrap_sasum(int *n, s *sx, int *incx) nogil:
    cdef s out
    _fortran_sasum(&out, n, sx, incx)
    return out
cdef sasum_t *sasum_f = &_wrap_sasum

ctypedef void _wscasum_t(s *out, int *n, c *cx, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_scasum "F_FUNC(scasumwrp, SCASUMWRP)"(s *out, int *n, c *cx, int *incx) nogil
cdef s _wrap_scasum(int *n, c *cx, int *incx) nogil:
    cdef s out
    _fortran_scasum(&out, n, cx, incx)
    return out
cdef scasum_t *scasum_f = &_wrap_scasum

ctypedef void _wscnrm2_t(s *out, int *n, c *x, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_scnrm2 "F_FUNC(scnrm2wrp, SCNRM2WRP)"(s *out, int *n, c *x, int *incx) nogil
cdef s _wrap_scnrm2(int *n, c *x, int *incx) nogil:
    cdef s out
    _fortran_scnrm2(&out, n, x, incx)
    return out
cdef scnrm2_t *scnrm2_f = &_wrap_scnrm2

ctypedef void _wsdot_t(s *out, int *n, s *sx, int *incx, s *sy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sdot "F_FUNC(sdotwrp, SDOTWRP)"(s *out, int *n, s *sx, int *incx, s *sy, int *incy) nogil
cdef s _wrap_sdot(int *n, s *sx, int *incx, s *sy, int *incy) nogil:
    cdef s out
    _fortran_sdot(&out, n, sx, incx, sy, incy)
    return out
cdef sdot_t *sdot_f = &_wrap_sdot

ctypedef void _wsdsdot_t(s *out, int *n, s *sb, s *sx, int *incx, s *sy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sdsdot "F_FUNC(sdsdotwrp, SDSDOTWRP)"(s *out, int *n, s *sb, s *sx, int *incx, s *sy, int *incy) nogil
cdef s _wrap_sdsdot(int *n, s *sb, s *sx, int *incx, s *sy, int *incy) nogil:
    cdef s out
    _fortran_sdsdot(&out, n, sb, sx, incx, sy, incy)
    return out
cdef sdsdot_t *sdsdot_f = &_wrap_sdsdot

ctypedef void _wsnrm2_t(s *out, int *n, s *x, int *incx) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_snrm2 "F_FUNC(snrm2wrp, SNRM2WRP)"(s *out, int *n, s *x, int *incx) nogil
cdef s _wrap_snrm2(int *n, s *x, int *incx) nogil:
    cdef s out
    _fortran_snrm2(&out, n, x, incx)
    return out
cdef snrm2_t *snrm2_f = &_wrap_snrm2

ctypedef void _wzdotc_t(z *out, int *n, z *zx, int *incx, z *zy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zdotc "F_FUNC(zdotcwrp, ZDOTCWRP)"(z *out, int *n, z *zx, int *incx, z *zy, int *incy) nogil
cdef z _wrap_zdotc(int *n, z *zx, int *incx, z *zy, int *incy) nogil:
    cdef z out
    _fortran_zdotc(&out, n, zx, incx, zy, incy)
    return out
cdef zdotc_t *zdotc_f = &_wrap_zdotc

ctypedef void _wzdotu_t(z *out, int *n, z *zx, int *incx, z *zy, int *incy) nogil
cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zdotu "F_FUNC(zdotuwrp, ZDOTUWRP)"(z *out, int *n, z *zx, int *incx, z *zy, int *incy) nogil
cdef z _wrap_zdotu(int *n, z *zx, int *incx, z *zy, int *incy) nogil:
    cdef z out
    _fortran_zdotu(&out, n, zx, incx, zy, incy)
    return out
cdef zdotu_t *zdotu_f = &_wrap_zdotu

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_caxpy "F_FUNC(caxpy,CAXPY)"(int *n, c *ca, c *cx, int *incx, c *cy, int *incy) nogil
cdef caxpy_t *caxpy_f = &_fortran_caxpy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ccopy "F_FUNC(ccopy,CCOPY)"(int *n, c *cx, int *incx, c *cy, int *incy) nogil
cdef ccopy_t *ccopy_f = &_fortran_ccopy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cgbmv "F_FUNC(cgbmv,CGBMV)"(char *trans, int *m, int *n, int *kl, int *ku, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
cdef cgbmv_t *cgbmv_f = &_fortran_cgbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cgemm "F_FUNC(cgemm,CGEMM)"(char *transa, char *transb, int *m, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
cdef cgemm_t *cgemm_f = &_fortran_cgemm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cgemv "F_FUNC(cgemv,CGEMV)"(char *trans, int *m, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
cdef cgemv_t *cgemv_f = &_fortran_cgemv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cgerc "F_FUNC(cgerc,CGERC)"(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
cdef cgerc_t *cgerc_f = &_fortran_cgerc

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cgeru "F_FUNC(cgeru,CGERU)"(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
cdef cgeru_t *cgeru_f = &_fortran_cgeru

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_chbmv "F_FUNC(chbmv,CHBMV)"(char *uplo, int *n, int *k, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
cdef chbmv_t *chbmv_f = &_fortran_chbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_chemm "F_FUNC(chemm,CHEMM)"(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
cdef chemm_t *chemm_f = &_fortran_chemm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_chemv "F_FUNC(chemv,CHEMV)"(char *uplo, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
cdef chemv_t *chemv_f = &_fortran_chemv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cher "F_FUNC(cher,CHER)"(char *uplo, int *n, s *alpha, c *x, int *incx, c *a, int *lda) nogil
cdef cher_t *cher_f = &_fortran_cher

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cher2 "F_FUNC(cher2,CHER2)"(char *uplo, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
cdef cher2_t *cher2_f = &_fortran_cher2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cher2k "F_FUNC(cher2k,CHER2K)"(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, s *beta, c *c, int *ldc) nogil
cdef cher2k_t *cher2k_f = &_fortran_cher2k

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cherk "F_FUNC(cherk,CHERK)"(char *uplo, char *trans, int *n, int *k, s *alpha, c *a, int *lda, s *beta, c *c, int *ldc) nogil
cdef cherk_t *cherk_f = &_fortran_cherk

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_chpmv "F_FUNC(chpmv,CHPMV)"(char *uplo, int *n, c *alpha, c *ap, c *x, int *incx, c *beta, c *y, int *incy) nogil
cdef chpmv_t *chpmv_f = &_fortran_chpmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_chpr "F_FUNC(chpr,CHPR)"(char *uplo, int *n, s *alpha, c *x, int *incx, c *ap) nogil
cdef chpr_t *chpr_f = &_fortran_chpr

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_chpr2 "F_FUNC(chpr2,CHPR2)"(char *uplo, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *ap) nogil
cdef chpr2_t *chpr2_f = &_fortran_chpr2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_crotg "F_FUNC(crotg,CROTG)"(c *ca, c *cb, s *c, c *s) nogil
cdef crotg_t *crotg_f = &_fortran_crotg

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cscal "F_FUNC(cscal,CSCAL)"(int *n, c *ca, c *cx, int *incx) nogil
cdef cscal_t *cscal_f = &_fortran_cscal

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_csrot "F_FUNC(csrot,CSROT)"(int *n, c *cx, int *incx, c *cy, int *incy, s *c, s *s) nogil
cdef csrot_t *csrot_f = &_fortran_csrot

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_csscal "F_FUNC(csscal,CSSCAL)"(int *n, s *sa, c *cx, int *incx) nogil
cdef csscal_t *csscal_f = &_fortran_csscal

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_cswap "F_FUNC(cswap,CSWAP)"(int *n, c *cx, int *incx, c *cy, int *incy) nogil
cdef cswap_t *cswap_f = &_fortran_cswap

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_csymm "F_FUNC(csymm,CSYMM)"(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
cdef csymm_t *csymm_f = &_fortran_csymm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_csyr2k "F_FUNC(csyr2k,CSYR2K)"(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
cdef csyr2k_t *csyr2k_f = &_fortran_csyr2k

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_csyrk "F_FUNC(csyrk,CSYRK)"(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *beta, c *c, int *ldc) nogil
cdef csyrk_t *csyrk_f = &_fortran_csyrk

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctbmv "F_FUNC(ctbmv,CTBMV)"(char *uplo, char *trans, char *diag, int *n, int *k, c *a, int *lda, c *x, int *incx) nogil
cdef ctbmv_t *ctbmv_f = &_fortran_ctbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctbsv "F_FUNC(ctbsv,CTBSV)"(char *uplo, char *trans, char *diag, int *n, int *k, c *a, int *lda, c *x, int *incx) nogil
cdef ctbsv_t *ctbsv_f = &_fortran_ctbsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctpmv "F_FUNC(ctpmv,CTPMV)"(char *uplo, char *trans, char *diag, int *n, c *ap, c *x, int *incx) nogil
cdef ctpmv_t *ctpmv_f = &_fortran_ctpmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctpsv "F_FUNC(ctpsv,CTPSV)"(char *uplo, char *trans, char *diag, int *n, c *ap, c *x, int *incx) nogil
cdef ctpsv_t *ctpsv_f = &_fortran_ctpsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctrmm "F_FUNC(ctrmm,CTRMM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb) nogil
cdef ctrmm_t *ctrmm_f = &_fortran_ctrmm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctrmv "F_FUNC(ctrmv,CTRMV)"(char *uplo, char *trans, char *diag, int *n, c *a, int *lda, c *x, int *incx) nogil
cdef ctrmv_t *ctrmv_f = &_fortran_ctrmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctrsm "F_FUNC(ctrsm,CTRSM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb) nogil
cdef ctrsm_t *ctrsm_f = &_fortran_ctrsm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ctrsv "F_FUNC(ctrsv,CTRSV)"(char *uplo, char *trans, char *diag, int *n, c *a, int *lda, c *x, int *incx) nogil
cdef ctrsv_t *ctrsv_f = &_fortran_ctrsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_daxpy "F_FUNC(daxpy,DAXPY)"(int *n, d *da, d *dx, int *incx, d *dy, int *incy) nogil
cdef daxpy_t *daxpy_f = &_fortran_daxpy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dcopy "F_FUNC(dcopy,DCOPY)"(int *n, d *dx, int *incx, d *dy, int *incy) nogil
cdef dcopy_t *dcopy_f = &_fortran_dcopy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dgbmv "F_FUNC(dgbmv,DGBMV)"(char *trans, int *m, int *n, int *kl, int *ku, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
cdef dgbmv_t *dgbmv_f = &_fortran_dgbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dgemm "F_FUNC(dgemm,DGEMM)"(char *transa, char *transb, int *m, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
cdef dgemm_t *dgemm_f = &_fortran_dgemm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dgemv "F_FUNC(dgemv,DGEMV)"(char *trans, int *m, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
cdef dgemv_t *dgemv_f = &_fortran_dgemv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dger "F_FUNC(dger,DGER)"(int *m, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *a, int *lda) nogil
cdef dger_t *dger_f = &_fortran_dger

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_drot "F_FUNC(drot,DROT)"(int *n, d *dx, int *incx, d *dy, int *incy, d *c, d *s) nogil
cdef drot_t *drot_f = &_fortran_drot

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_drotg "F_FUNC(drotg,DROTG)"(d *da, d *db, d *c, d *s) nogil
cdef drotg_t *drotg_f = &_fortran_drotg

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_drotm "F_FUNC(drotm,DROTM)"(int *n, d *dx, int *incx, d *dy, int *incy, d *dparam) nogil
cdef drotm_t *drotm_f = &_fortran_drotm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_drotmg "F_FUNC(drotmg,DROTMG)"(d *dd1, d *dd2, d *dx1, d *dy1, d *dparam) nogil
cdef drotmg_t *drotmg_f = &_fortran_drotmg

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsbmv "F_FUNC(dsbmv,DSBMV)"(char *uplo, int *n, int *k, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
cdef dsbmv_t *dsbmv_f = &_fortran_dsbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dscal "F_FUNC(dscal,DSCAL)"(int *n, d *da, d *dx, int *incx) nogil
cdef dscal_t *dscal_f = &_fortran_dscal

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dspmv "F_FUNC(dspmv,DSPMV)"(char *uplo, int *n, d *alpha, d *ap, d *x, int *incx, d *beta, d *y, int *incy) nogil
cdef dspmv_t *dspmv_f = &_fortran_dspmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dspr "F_FUNC(dspr,DSPR)"(char *uplo, int *n, d *alpha, d *x, int *incx, d *ap) nogil
cdef dspr_t *dspr_f = &_fortran_dspr

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dspr2 "F_FUNC(dspr2,DSPR2)"(char *uplo, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *ap) nogil
cdef dspr2_t *dspr2_f = &_fortran_dspr2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dswap "F_FUNC(dswap,DSWAP)"(int *n, d *dx, int *incx, d *dy, int *incy) nogil
cdef dswap_t *dswap_f = &_fortran_dswap

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsymm "F_FUNC(dsymm,DSYMM)"(char *side, char *uplo, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
cdef dsymm_t *dsymm_f = &_fortran_dsymm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsymv "F_FUNC(dsymv,DSYMV)"(char *uplo, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
cdef dsymv_t *dsymv_f = &_fortran_dsymv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsyr "F_FUNC(dsyr,DSYR)"(char *uplo, int *n, d *alpha, d *x, int *incx, d *a, int *lda) nogil
cdef dsyr_t *dsyr_f = &_fortran_dsyr

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsyr2 "F_FUNC(dsyr2,DSYR2)"(char *uplo, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *a, int *lda) nogil
cdef dsyr2_t *dsyr2_f = &_fortran_dsyr2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsyr2k "F_FUNC(dsyr2k,DSYR2K)"(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
cdef dsyr2k_t *dsyr2k_f = &_fortran_dsyr2k

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dsyrk "F_FUNC(dsyrk,DSYRK)"(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *beta, d *c, int *ldc) nogil
cdef dsyrk_t *dsyrk_f = &_fortran_dsyrk

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtbmv "F_FUNC(dtbmv,DTBMV)"(char *uplo, char *trans, char *diag, int *n, int *k, d *a, int *lda, d *x, int *incx) nogil
cdef dtbmv_t *dtbmv_f = &_fortran_dtbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtbsv "F_FUNC(dtbsv,DTBSV)"(char *uplo, char *trans, char *diag, int *n, int *k, d *a, int *lda, d *x, int *incx) nogil
cdef dtbsv_t *dtbsv_f = &_fortran_dtbsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtpmv "F_FUNC(dtpmv,DTPMV)"(char *uplo, char *trans, char *diag, int *n, d *ap, d *x, int *incx) nogil
cdef dtpmv_t *dtpmv_f = &_fortran_dtpmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtpsv "F_FUNC(dtpsv,DTPSV)"(char *uplo, char *trans, char *diag, int *n, d *ap, d *x, int *incx) nogil
cdef dtpsv_t *dtpsv_f = &_fortran_dtpsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtrmm "F_FUNC(dtrmm,DTRMM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb) nogil
cdef dtrmm_t *dtrmm_f = &_fortran_dtrmm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtrmv "F_FUNC(dtrmv,DTRMV)"(char *uplo, char *trans, char *diag, int *n, d *a, int *lda, d *x, int *incx) nogil
cdef dtrmv_t *dtrmv_f = &_fortran_dtrmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtrsm "F_FUNC(dtrsm,DTRSM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb) nogil
cdef dtrsm_t *dtrsm_f = &_fortran_dtrsm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_dtrsv "F_FUNC(dtrsv,DTRSV)"(char *uplo, char *trans, char *diag, int *n, d *a, int *lda, d *x, int *incx) nogil
cdef dtrsv_t *dtrsv_f = &_fortran_dtrsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_saxpy "F_FUNC(saxpy,SAXPY)"(int *n, s *sa, s *sx, int *incx, s *sy, int *incy) nogil
cdef saxpy_t *saxpy_f = &_fortran_saxpy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_scopy "F_FUNC(scopy,SCOPY)"(int *n, s *sx, int *incx, s *sy, int *incy) nogil
cdef scopy_t *scopy_f = &_fortran_scopy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sgbmv "F_FUNC(sgbmv,SGBMV)"(char *trans, int *m, int *n, int *kl, int *ku, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
cdef sgbmv_t *sgbmv_f = &_fortran_sgbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sgemm "F_FUNC(sgemm,SGEMM)"(char *transa, char *transb, int *m, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
cdef sgemm_t *sgemm_f = &_fortran_sgemm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sgemv "F_FUNC(sgemv,SGEMV)"(char *trans, int *m, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
cdef sgemv_t *sgemv_f = &_fortran_sgemv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sger "F_FUNC(sger,SGER)"(int *m, int *n, s *alpha, s *x, int *incx, s *y, int *incy, s *a, int *lda) nogil
cdef sger_t *sger_f = &_fortran_sger

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_srot "F_FUNC(srot,SROT)"(int *n, s *sx, int *incx, s *sy, int *incy, s *c, s *s) nogil
cdef srot_t *srot_f = &_fortran_srot

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_srotg "F_FUNC(srotg,SROTG)"(s *sa, s *sb, s *c, s *s) nogil
cdef srotg_t *srotg_f = &_fortran_srotg

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_srotm "F_FUNC(srotm,SROTM)"(int *n, s *sx, int *incx, s *sy, int *incy, s *sparam) nogil
cdef srotm_t *srotm_f = &_fortran_srotm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_srotmg "F_FUNC(srotmg,SROTMG)"(s *sd1, s *sd2, s *sx1, s *sy1, s *sparam) nogil
cdef srotmg_t *srotmg_f = &_fortran_srotmg

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssbmv "F_FUNC(ssbmv,SSBMV)"(char *uplo, int *n, int *k, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
cdef ssbmv_t *ssbmv_f = &_fortran_ssbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sscal "F_FUNC(sscal,SSCAL)"(int *n, s *sa, s *sx, int *incx) nogil
cdef sscal_t *sscal_f = &_fortran_sscal

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sspmv "F_FUNC(sspmv,SSPMV)"(char *uplo, int *n, s *alpha, s *ap, s *x, int *incx, s *beta, s *y, int *incy) nogil
cdef sspmv_t *sspmv_f = &_fortran_sspmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sspr "F_FUNC(sspr,SSPR)"(char *uplo, int *n, s *alpha, s *x, int *incx, s *ap) nogil
cdef sspr_t *sspr_f = &_fortran_sspr

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sspr2 "F_FUNC(sspr2,SSPR2)"(char *uplo, int *n, s *alpha, s *x, int *incx, s *y, int *incy, s *ap) nogil
cdef sspr2_t *sspr2_f = &_fortran_sspr2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_sswap "F_FUNC(sswap,SSWAP)"(int *n, s *sx, int *incx, s *sy, int *incy) nogil
cdef sswap_t *sswap_f = &_fortran_sswap

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssymm "F_FUNC(ssymm,SSYMM)"(char *side, char *uplo, int *m, int *n, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
cdef ssymm_t *ssymm_f = &_fortran_ssymm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssymv "F_FUNC(ssymv,SSYMV)"(char *uplo, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
cdef ssymv_t *ssymv_f = &_fortran_ssymv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssyr "F_FUNC(ssyr,SSYR)"(char *uplo, int *n, s *alpha, s *x, int *incx, s *a, int *lda) nogil
cdef ssyr_t *ssyr_f = &_fortran_ssyr

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssyr2 "F_FUNC(ssyr2,SSYR2)"(char *uplo, int *n, s *alpha, s *x, int *incx, s *y, int *incy, s *a, int *lda) nogil
cdef ssyr2_t *ssyr2_f = &_fortran_ssyr2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssyr2k "F_FUNC(ssyr2k,SSYR2K)"(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
cdef ssyr2k_t *ssyr2k_f = &_fortran_ssyr2k

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ssyrk "F_FUNC(ssyrk,SSYRK)"(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *beta, s *c, int *ldc) nogil
cdef ssyrk_t *ssyrk_f = &_fortran_ssyrk

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_stbmv "F_FUNC(stbmv,STBMV)"(char *uplo, char *trans, char *diag, int *n, int *k, s *a, int *lda, s *x, int *incx) nogil
cdef stbmv_t *stbmv_f = &_fortran_stbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_stbsv "F_FUNC(stbsv,STBSV)"(char *uplo, char *trans, char *diag, int *n, int *k, s *a, int *lda, s *x, int *incx) nogil
cdef stbsv_t *stbsv_f = &_fortran_stbsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_stpmv "F_FUNC(stpmv,STPMV)"(char *uplo, char *trans, char *diag, int *n, s *ap, s *x, int *incx) nogil
cdef stpmv_t *stpmv_f = &_fortran_stpmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_stpsv "F_FUNC(stpsv,STPSV)"(char *uplo, char *trans, char *diag, int *n, s *ap, s *x, int *incx) nogil
cdef stpsv_t *stpsv_f = &_fortran_stpsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_strmm "F_FUNC(strmm,STRMM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, s *alpha, s *a, int *lda, s *b, int *ldb) nogil
cdef strmm_t *strmm_f = &_fortran_strmm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_strmv "F_FUNC(strmv,STRMV)"(char *uplo, char *trans, char *diag, int *n, s *a, int *lda, s *x, int *incx) nogil
cdef strmv_t *strmv_f = &_fortran_strmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_strsm "F_FUNC(strsm,STRSM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, s *alpha, s *a, int *lda, s *b, int *ldb) nogil
cdef strsm_t *strsm_f = &_fortran_strsm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_strsv "F_FUNC(strsv,STRSV)"(char *uplo, char *trans, char *diag, int *n, s *a, int *lda, s *x, int *incx) nogil
cdef strsv_t *strsv_f = &_fortran_strsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_xerbla "F_FUNC(xerbla,XERBLA)"(char *srname, int *info) nogil
cdef xerbla_t *xerbla_f = &_fortran_xerbla

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zaxpy "F_FUNC(zaxpy,ZAXPY)"(int *n, z *za, z *zx, int *incx, z *zy, int *incy) nogil
cdef zaxpy_t *zaxpy_f = &_fortran_zaxpy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zcopy "F_FUNC(zcopy,ZCOPY)"(int *n, z *zx, int *incx, z *zy, int *incy) nogil
cdef zcopy_t *zcopy_f = &_fortran_zcopy

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zdrot "F_FUNC(zdrot,ZDROT)"(int *n, z *cx, int *incx, z *cy, int *incy, d *c, d *s) nogil
cdef zdrot_t *zdrot_f = &_fortran_zdrot

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zdscal "F_FUNC(zdscal,ZDSCAL)"(int *n, d *da, z *zx, int *incx) nogil
cdef zdscal_t *zdscal_f = &_fortran_zdscal

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zgbmv "F_FUNC(zgbmv,ZGBMV)"(char *trans, int *m, int *n, int *kl, int *ku, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
cdef zgbmv_t *zgbmv_f = &_fortran_zgbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zgemm "F_FUNC(zgemm,ZGEMM)"(char *transa, char *transb, int *m, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
cdef zgemm_t *zgemm_f = &_fortran_zgemm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zgemv "F_FUNC(zgemv,ZGEMV)"(char *trans, int *m, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
cdef zgemv_t *zgemv_f = &_fortran_zgemv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zgerc "F_FUNC(zgerc,ZGERC)"(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
cdef zgerc_t *zgerc_f = &_fortran_zgerc

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zgeru "F_FUNC(zgeru,ZGERU)"(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
cdef zgeru_t *zgeru_f = &_fortran_zgeru

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zhbmv "F_FUNC(zhbmv,ZHBMV)"(char *uplo, int *n, int *k, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
cdef zhbmv_t *zhbmv_f = &_fortran_zhbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zhemm "F_FUNC(zhemm,ZHEMM)"(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
cdef zhemm_t *zhemm_f = &_fortran_zhemm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zhemv "F_FUNC(zhemv,ZHEMV)"(char *uplo, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
cdef zhemv_t *zhemv_f = &_fortran_zhemv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zher "F_FUNC(zher,ZHER)"(char *uplo, int *n, d *alpha, z *x, int *incx, z *a, int *lda) nogil
cdef zher_t *zher_f = &_fortran_zher

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zher2 "F_FUNC(zher2,ZHER2)"(char *uplo, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
cdef zher2_t *zher2_f = &_fortran_zher2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zher2k "F_FUNC(zher2k,ZHER2K)"(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, d *beta, z *c, int *ldc) nogil
cdef zher2k_t *zher2k_f = &_fortran_zher2k

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zherk "F_FUNC(zherk,ZHERK)"(char *uplo, char *trans, int *n, int *k, d *alpha, z *a, int *lda, d *beta, z *c, int *ldc) nogil
cdef zherk_t *zherk_f = &_fortran_zherk

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zhpmv "F_FUNC(zhpmv,ZHPMV)"(char *uplo, int *n, z *alpha, z *ap, z *x, int *incx, z *beta, z *y, int *incy) nogil
cdef zhpmv_t *zhpmv_f = &_fortran_zhpmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zhpr "F_FUNC(zhpr,ZHPR)"(char *uplo, int *n, d *alpha, z *x, int *incx, z *ap) nogil
cdef zhpr_t *zhpr_f = &_fortran_zhpr

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zhpr2 "F_FUNC(zhpr2,ZHPR2)"(char *uplo, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *ap) nogil
cdef zhpr2_t *zhpr2_f = &_fortran_zhpr2

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zrotg "F_FUNC(zrotg,ZROTG)"(z *ca, z *cb, d *c, z *s) nogil
cdef zrotg_t *zrotg_f = &_fortran_zrotg

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zscal "F_FUNC(zscal,ZSCAL)"(int *n, z *za, z *zx, int *incx) nogil
cdef zscal_t *zscal_f = &_fortran_zscal

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zswap "F_FUNC(zswap,ZSWAP)"(int *n, z *zx, int *incx, z *zy, int *incy) nogil
cdef zswap_t *zswap_f = &_fortran_zswap

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zsymm "F_FUNC(zsymm,ZSYMM)"(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
cdef zsymm_t *zsymm_f = &_fortran_zsymm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zsyr2k "F_FUNC(zsyr2k,ZSYR2K)"(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
cdef zsyr2k_t *zsyr2k_f = &_fortran_zsyr2k

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_zsyrk "F_FUNC(zsyrk,ZSYRK)"(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *beta, z *c, int *ldc) nogil
cdef zsyrk_t *zsyrk_f = &_fortran_zsyrk

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztbmv "F_FUNC(ztbmv,ZTBMV)"(char *uplo, char *trans, char *diag, int *n, int *k, z *a, int *lda, z *x, int *incx) nogil
cdef ztbmv_t *ztbmv_f = &_fortran_ztbmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztbsv "F_FUNC(ztbsv,ZTBSV)"(char *uplo, char *trans, char *diag, int *n, int *k, z *a, int *lda, z *x, int *incx) nogil
cdef ztbsv_t *ztbsv_f = &_fortran_ztbsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztpmv "F_FUNC(ztpmv,ZTPMV)"(char *uplo, char *trans, char *diag, int *n, z *ap, z *x, int *incx) nogil
cdef ztpmv_t *ztpmv_f = &_fortran_ztpmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztpsv "F_FUNC(ztpsv,ZTPSV)"(char *uplo, char *trans, char *diag, int *n, z *ap, z *x, int *incx) nogil
cdef ztpsv_t *ztpsv_f = &_fortran_ztpsv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztrmm "F_FUNC(ztrmm,ZTRMM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb) nogil
cdef ztrmm_t *ztrmm_f = &_fortran_ztrmm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztrmv "F_FUNC(ztrmv,ZTRMV)"(char *uplo, char *trans, char *diag, int *n, z *a, int *lda, z *x, int *incx) nogil
cdef ztrmv_t *ztrmv_f = &_fortran_ztrmv

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztrsm "F_FUNC(ztrsm,ZTRSM)"(char *side, char *uplo, char *transa, char *diag, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb) nogil
cdef ztrsm_t *ztrsm_f = &_fortran_ztrsm

cdef extern from "_blas_subroutine_wrappers.h":
    void _fortran_ztrsv "F_FUNC(ztrsv,ZTRSV)"(char *uplo, char *trans, char *diag, int *n, z *a, int *lda, z *x, int *incx) nogil
cdef ztrsv_t *ztrsv_f = &_fortran_ztrsv


# Python-accessible wrappers for testing:

cdef inline bint _is_contiguous(double[:,:] a, int axis) nogil:
    return (a.strides[axis] == sizeof(a[0,0]) or a.shape[axis] == 1)

cpdef float complex _test_cdotc(float complex[:] cx, float complex[:] cy) nogil:
    cdef:
        int n = cx.shape[0]
        int incx = cx.strides[0] // sizeof(cx[0])
        int incy = cy.strides[0] // sizeof(cy[0])
    return cdotc_f(&n, &cx[0], &incx, &cy[0], &incy)

cpdef float complex _test_cdotu(float complex[:] cx, float complex[:] cy) nogil:
    cdef:
        int n = cx.shape[0]
        int incx = cx.strides[0] // sizeof(cx[0])
        int incy = cy.strides[0] // sizeof(cy[0])
    return cdotu_f(&n, &cx[0], &incx, &cy[0], &incy)

cpdef double _test_dasum(double[:] dx) nogil:
    cdef:
        int n = dx.shape[0]
        int incx = dx.strides[0] // sizeof(dx[0])
    return dasum_f(&n, &dx[0], &incx)

cpdef double _test_ddot(double[:] dx, double[:] dy) nogil:
    cdef:
        int n = dx.shape[0]
        int incx = dx.strides[0] // sizeof(dx[0])
        int incy = dy.strides[0] // sizeof(dy[0])
    return ddot_f(&n, &dx[0], &incx, &dy[0], &incy)

cpdef int _test_dgemm(double alpha, double[:,:] a, double[:,:] b, double beta,
                double[:,:] c) nogil except -1:
    cdef:
        char *transa
        char *transb
        int m, n, k, lda, ldb, ldc
        double *a0=&a[0,0]
        double *b0=&b[0,0]
        double *c0=&c[0,0]
    # In the case that c is C contiguous, swap a and b and
    # swap whether or not each of them is transposed.
    # This can be done because a.dot(b) = b.T.dot(a.T).T.
    if _is_contiguous(c, 1):
        if _is_contiguous(a, 1):
            transb = 'n'
            ldb = (&a[1,0]) - a0 if a.shape[0] > 1 else 1
        elif _is_contiguous(a, 0):
            transb = 't'
            ldb = (&a[0,1]) - a0 if a.shape[1] > 1 else 1
        else:
            with gil:
                raise ValueError("Input 'a' is neither C nor Fortran contiguous.")
        if _is_contiguous(b, 1):
            transa = 'n'
            lda = (&b[1,0]) - b0 if b.shape[0] > 1 else 1
        elif _is_contiguous(b, 0):
            transa = 't'
            lda = (&b[0,1]) - b0 if b.shape[1] > 1 else 1
        else:
            with gil:
                raise ValueError("Input 'b' is neither C nor Fortran contiguous.")
        k = b.shape[0]
        if k != a.shape[1]:
            with gil:
                raise ValueError("Shape mismatch in input arrays.")
        m = b.shape[1]
        n = a.shape[0]
        if n != c.shape[0] or m != c.shape[1]:
            with gil:
                raise ValueError("Output array does not have the correct shape.")
        ldc = (&c[1,0]) - c0 if c.shape[0] > 1 else 1
        dgemm_f(transa, transb, &m, &n, &k, &alpha, b0, &lda, a0,
                   &ldb, &beta, c0, &ldc)
    elif _is_contiguous(c, 0):
        if _is_contiguous(a, 1):
            transa = 't'
            lda = (&a[1,0]) - a0 if a.shape[0] > 1 else 1
        elif _is_contiguous(a, 0):
            transa = 'n'
            lda = (&a[0,1]) - a0 if a.shape[1] > 1 else 1
        else:
            with gil:
                raise ValueError("Input 'a' is neither C nor Fortran contiguous.")
        if _is_contiguous(b, 1):
            transb = 't'
            ldb = (&b[1,0]) - b0 if b.shape[0] > 1 else 1
        elif _is_contiguous(b, 0):
            transb = 'n'
            ldb = (&b[0,1]) - b0 if b.shape[1] > 1 else 1
        else:
            with gil:
                raise ValueError("Input 'b' is neither C nor Fortran contiguous.")
        m = a.shape[0]
        k = a.shape[1]
        if k != b.shape[0]:
            with gil:
                raise ValueError("Shape mismatch in input arrays.")
        n = b.shape[1]
        if m != c.shape[0] or n != c.shape[1]:
            with gil:
                raise ValueError("Output array does not have the correct shape.")
        ldc = (&c[0,1]) - c0 if c.shape[1] > 1 else 1
        dgemm_f(transa, transb, &m, &n, &k, &alpha, a0, &lda, b0,
                   &ldb, &beta, c0, &ldc)
    else:
        with gil:
            raise ValueError("Input 'c' is neither C nor Fortran contiguous.")
    return 0

cpdef double _test_dnrm2(double[:] x) nogil:
    cdef:
        int n = x.shape[0]
        int incx = x.strides[0] // sizeof(x[0])
    return dnrm2_f(&n, &x[0], &incx)

cpdef double _test_dzasum(double complex[:] zx) nogil:
    cdef:
        int n = zx.shape[0]
        int incx = zx.strides[0] // sizeof(zx[0])
    return dzasum_f(&n, &zx[0], &incx)

cpdef double _test_dznrm2(double complex[:] x) nogil:
    cdef:
        int n = x.shape[0]
        int incx = x.strides[0] // sizeof(x[0])
    return dznrm2_f(&n, &x[0], &incx)

cpdef int _test_icamax(float complex[:] cx) nogil:
    cdef:
        int n = cx.shape[0]
        int incx = cx.strides[0] // sizeof(cx[0])
    return icamax_f(&n, &cx[0], &incx)

cpdef int _test_idamax(double[:] dx) nogil:
    cdef:
        int n = dx.shape[0]
        int incx = dx.strides[0] // sizeof(dx[0])
    return idamax_f(&n, &dx[0], &incx)

cpdef int _test_isamax(float[:] sx) nogil:
    cdef:
        int n = sx.shape[0]
        int incx = sx.strides[0] // sizeof(sx[0])
    return isamax_f(&n, &sx[0], &incx)

cpdef int _test_izamax(double complex[:] zx) nogil:
    cdef:
        int n = zx.shape[0]
        int incx = zx.strides[0] // sizeof(zx[0])
    return izamax_f(&n, &zx[0], &incx)

cpdef float _test_sasum(float[:] sx) nogil:
    cdef:
        int n = sx.shape[0]
        int incx = sx.shape[0] // sizeof(sx[0])
    return sasum_f(&n, &sx[0], &incx)

cpdef float _test_scasum(float complex[:] cx) nogil:
    cdef:
        int n = cx.shape[0]
        int incx = cx.strides[0] // sizeof(cx[0])
    return scasum_f(&n, &cx[0], &incx)

cpdef float _test_scnrm2(float complex[:] x) nogil:
    cdef:
        int n = x.shape[0]
        int incx = x.strides[0] // sizeof(x[0])
    return scnrm2_f(&n, &x[0], &incx)

cpdef float _test_sdot(float[:] sx, float[:] sy) nogil:
    cdef:
        int n = sx.shape[0]
        int incx = sx.strides[0] // sizeof(sx[0])
        int incy = sy.strides[0] // sizeof(sy[0])
    return sdot_f(&n, &sx[0], &incx, &sy[0], &incy)

cpdef float _test_snrm2(float[:] x) nogil:
    cdef:
        int n = x.shape[0]
        int incx = x.shape[0] // sizeof(x[0])
    return snrm2_f(&n, &x[0], &incx)

cpdef double complex _test_zdotc(double complex[:] zx, double complex[:] zy) nogil:
    cdef:
        int n = zx.shape[0]
        int incx = zx.strides[0] // sizeof(zx[0])
        int incy = zy.strides[0] // sizeof(zy[0])
    return zdotc_f(&n, &zx[0], &incx, &zy[0], &incy)

cpdef double complex _test_zdotu(double complex[:] zx, double complex[:] zy) nogil:
    cdef:
        int n = zx.shape[0]
        int incx = zx.strides[0] // sizeof(zx[0])
        int incy = zy.strides[0] // sizeof(zy[0])
    return zdotu_f(&n, &zx[0], &incx, &zy[0], &incy)
