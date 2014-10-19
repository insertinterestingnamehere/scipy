ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

# Single precision complex routines:
ctypedef int caxpy_t(int *n, c *ca, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int ccopy_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int cdotc_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int cdotu_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int cgemm_t(char *transa, char *transb, int *m, int *n, int*k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int cgemv_t(char *trans, int *m, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
ctypedef int cgerc_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
ctypedef int cgeru_t(int *m, int *n, c *alpha, c *x, int *incx, c *y, int *incy, c *a, int *lda) nogil
ctypedef int chemm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int chemv_t(char *uplo, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil
ctypedef int cher2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, s *beta, c *c, int *ldc) nogil
ctypedef int cherk_t(char *uplo, char *trans, int *n, int *k, s *alpha, c *a, int *lda, s *beta, c *c, int *ldc) nogil
ctypedef int crotg_t(c *ca, c *cb, s *c, c *s) nogil
ctypedef int cscal_t(int *n, c *ca, c *cx, int *incx) nogil
ctypedef int csrot_t(int *n, c *cx, int *incx, c *cy, int *incy, s *c, s *s) nogil
ctypedef int csscal_t(int *n, s *sa, c *cx, int *incx) nogil
ctypedef int cswap_t(int *n, c *cx, int *incx, c *cy, int *incy) nogil
ctypedef int csymm_t(char *side, char *uplo, int *m, int *n, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int csyr2k_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *b, int *ldb, c *beta, c *c, int *ldc) nogil
ctypedef int csyrk_t(char *uplo, char *trans, int *n, int *k, c *alpha, c *a, int *lda, c *beta, c *c, int *ldc) nogil
ctypedef int ctrmv_t(char *uplo, char *trans, char *diag, int *n, c *a, int *lda, c *x, int *incx) nogil
ctypedef int dasum_t(int *n, d *dx, int *incx) nogil
ctypedef int daxpy_t(int *n, d *da, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int dcopy_t(int *n, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int ddot_t(int *n, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int dgemm_t(char *transa, char *transb, int *m, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
ctypedef int dgemv_t(char *trans, int *m, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
ctypedef int dger_t(int *m, int *n, d *alpha, d *x, int *incx, d *y, int *incy, d *a, int *lda) nogil
ctypedef int dnrm2_t(int *n, d *x, int *incx) nogil
ctypedef int drot_t(int *n, d *dx, int *incx, d *dy, int *incy, d *c, d *s) nogil
ctypedef int drotg_t(d *da, d *db, d *c ,d *s) nogil
ctypedef int drotm_t(int *n, d *dx, int *incx, d *dy, int *incy, d *dparam) nogil
ctypedef int drotmg_t(d *dd1, d *dd2, d *dx1, d *dy1, d *dparam) nogil
ctypedef int dscal_t(int *n, d *da, d *dx, int *incx) nogil
ctypedef int dswap_t(int *n, d *dx, int *incx, d *dy, int *incy) nogil
ctypedef int dsymm_t(char *side, char *uplo, int *m, int *n, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
ctypedef int dsymv_t(char *uplo, int *n, d *alpha, d *a, int *lda, d *x, int *incx, d *beta, d *y, int *incy) nogil
ctypedef int dsyr2k_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *b, int *ldb, d *beta, d *c, int *ldc) nogil
ctypedef int dsyrk_t(char *uplo, char *trans, int *n, int *k, d *alpha, d *a, int *lda, d *beta, d *c, int *ldc) nogil
ctypedef int dtrmv_t(char *uplo, char *trans, char *diag, int *n, d *a, int *lda, d *x, int *incx) nogil
ctypedef int dzasum_t(int *n, z *zx, int *incx) nogil
ctypedef int dznrm2_t(int *n, z *x, int *incx) nogil
ctypedef int icamax_t(int *n, c *cx, int *incx) nogil
ctypedef int idamax_t(int *n, d *dx, int *incx) nogil
ctypedef int isamax_t(int *n, s *sx, int *incx) nogil
ctypedef int izamax_t(int *n, z *zx, int *incx) nogil
ctypedef int sasum_t(int *n, s *sx, int *incx) nogil
ctypedef int saxpy_t(int *n, s *sa, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int scasum_t(int *n, c *cx, int *incx) nogil
ctypedef int scnrm2_t(int *n, c *x, int *incx) nogil
ctypedef int scopy_t(int *n, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int sdot_t(int *n, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int sgemm_t(char *transa, char *transb, int *m, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
ctypedef int sgemv_t(char *trans, int *m, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
ctypedef int sger_t(int *m, int *n, s *alpha, s *x, int *incx, s *y, int *incy, s *a, int *lda) nogil
ctypedef int snrm2_t(int *n, s *x, int *incx) nogil
ctypedef int srot_t(int *n, s *sx, int *incx, s *sy, int *incy, s *c, s *s) nogil
ctypedef int srotg_t(s *sa, s *sb, s *c ,s *s) nogil
ctypedef int srotm_t(int *n, s *sx, int *incx, s *sy, int *incy, s *sparam) nogil
ctypedef int srotmg_t(s *sd1, s *sd2, s *sx1, s *sy1, s *sparam) nogil
ctypedef int sscal_t(int *n, s *sa, s *sx, int *incx) nogil
ctypedef int sswap_t(int *n, s *sx, int *incx, s *sy, int *incy) nogil
ctypedef int ssymm_t(char *side, char *uplo, int *m, int *n, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
ctypedef int ssymv_t(char *uplo, int *n, s *alpha, s *a, int *lda, s *x, int *incx, s *beta, s *y, int *incy) nogil
ctypedef int ssyr2k_t(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *b, int *ldb, s *beta, s *c, int *ldc) nogil
ctypedef int ssyrk_t(char *uplo, char *trans, int *n, int *k, s *alpha, s *a, int *lda, s *beta, s *c, int *ldc) nogil
ctypedef int strmv_t(char *uplo, char *trans, char *diag, int *n, s *a, int *lda, s *x, int *incx) nogil
ctypedef int zaxpy_t(int *n, z *za, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zcopy_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zdotc_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zdotu_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zdrot_t(int *n, z *cx, int *incx, z *cy, int *incy, d *c, d *s) nogil
ctypedef int zdscal_t(int *n, d *da, z *zx, int *incx) nogil
ctypedef int zgemm_t(char *transa, char *transb, int *m, int *n, int*k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zgemv_t(char *trans, int *m, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
ctypedef int zgerc_t(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
ctypedef int zgeru_t(int *m, int *n, z *alpha, z *x, int *incx, z *y, int *incy, z *a, int *lda) nogil
ctypedef int zhemm_t(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zhemv_t(char *uplo, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil
ctypedef int zher2k_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, d *beta, z *c, int *ldc) nogil
ctypedef int zherk_t(char *uplo, char *trans, int *n, int *k, d *alpha, z *a, int *lda, d *beta, z *c, int *ldc) nogil
ctypedef int zrotg_t(z *ca, z *cb, d *c, z *s) nogil
ctypedef int zscal_t(int *n, z *za, z *zx, int *incx) nogil
ctypedef int zswap_t(int *n, z *zx, int *incx, z *zy, int *incy) nogil
ctypedef int zsymm_t(char *side, char *uplo, int *m, int *n, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zsyr2k_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *b, int *ldb, z *beta, z *c, int *ldc) nogil
ctypedef int zsyrk_t(char *uplo, char *trans, int *n, int *k, z *alpha, z *a, int *lda, z *beta, z *c, int *ldc) nogil
ctypedef int ztrmv_t(char *uplo, char *trans, char *diag, int *n, z *a, int *lda, z *x, int *incx) nogil

cdef:
    caxpy_t *_caxpy
    ccopy_t *_ccopy
    cdotc_t *_cdotc
    cdotu_t *_cdotu
    cgemm_t *_cgemm
    cgemv_t *_cgemv
    cgerc_t *_cgerc
    cgeru_t *_cgeru
    chemm_t *_chemm
    chemv_t *_chemv
    cher2k_t *_cher2k
    cherk_t *_cherk
    crotg_t *_crotg
    cscal_t *_cscal
    csrot_t *_csrot
    csscal_t *_csscal
    cswap_t *_cswap
    csymm_t *_csymm
    csyr2k_t *_csyr2k
    csyrk_t *_csyrk
    ctrmv_t *_ctrmv
    dasum_t *_dasum
    daxpy_t *_daxpy
    dcopy_t *_dcopy
    ddot_t *_ddot
    dgemm_t *_dgemm
    dgemv_t *_dgemv
    dger_t *_dger
    dnrm2_t *_dnrm2
    drot_t *_drot
    drotg_t *_drotg
    drotm_t *_drotm
    drotmg_t *_drotmg
    dscal_t *_dscal
    dswap_t *_dswap
    dsymm_t *_dsymm
    dsymv_t *_dsymv
    dsyr2k_t *_dsyr2k
    dsyrk_t *_dsyrk
    dtrmv_t *_dtrmv
    dzasum_t *_dzasum
    dznrm2_t *_dznrm2
    icamax_t *_icamax
    idamax_t *_idamax
    isamax_t *_isamax
    izamax_t *_izamax
    sasum_t *_sasum
    saxpy_t *_saxpy
    scasum_t *_scasum
    scnrm2_t *_scnrm2
    scopy_t *_scopy
    sdot_t *_sdot
    sgemm_t *_sgemm
    sgemv_t *_sgemv
    sger_t *_sger
    snrm2_t *_snrm2
    srot_t *_srot
    srotg_t *_srotg
    srotm_t *_srotm
    srotmg_t *_srotmg
    sscal_t *_sscal
    sswap_t *_sswap
    ssymm_t *_ssymm
    ssymv_t *_ssymv
    ssyr2k_t *_ssyr2k
    ssyrk_t *_ssyrk
    strmv_t *_strmv
    zaxpy_t *_zaxpy
    zcopy_t *_zcopy
    zdotc_t *_zdotc
    zdotu_t *_zdotu
    zdrot_t *_zdrot
    zdscal_t *_zdscal
    zgemm_t *_zgemm
    zgemv_t *_zgemv
    zgerc_t *_zgerc
    zgeru_t *_zgeru
    zhemm_t *_zhemm
    zhemv_t *_zhemv
    zher2k_t *_zher2k
    zherk_t *_zherk
    zrotg_t *_zrotg
    zscal_t *_zscal
    zswap_t *_zswap
    zsymm_t *_zsymm
    zsyr2k_t *_zsyr2k
    zsyrk_t *_zsyrk
    ztrmv_t *_ztrmv
