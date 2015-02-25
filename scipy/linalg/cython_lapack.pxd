ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

# Function pointer type declarations for
# gees and gges families of functions.
ctypedef int cselect1(c*)
ctypedef int cselect2(c*, c*)
ctypedef int dselect2(d*, d*)
ctypedef int dselect3(d*, d*, d*)
ctypedef int sselect2(s*, s*)
ctypedef int sselect3(s*, s*, s*)
ctypedef int zselect1(z*)
ctypedef int zselect2(z*, z*)

ctypedef void cgbsv_t(int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info) nogil
cdef cgbsv_t *cgbsv_f

ctypedef void cgbtrf_t(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, int *info) nogil
cdef cgbtrf_t *cgbtrf_f

ctypedef void cgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info) nogil
cdef cgbtrs_t *cgbtrs_f

ctypedef void cgebal_t(char *job, int *n, c *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil
cdef cgebal_t *cgebal_f

ctypedef void cgees_t(char *jobvs, char *sort, cselect1 *select, int *n, c *a, int *lda, int *sdim, c *w, c *vs, int *ldvs, c *work, int *lwork, s *rwork, int *bwork, int *info) nogil
cdef cgees_t *cgees_f

ctypedef void cgeev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *w, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil
cdef cgeev_t *cgeev_f

ctypedef void cgegv_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil
cdef cgegv_t *cgegv_f

ctypedef void cgehrd_t(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
cdef cgehrd_t *cgehrd_f

ctypedef void cgelss_t(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, s *s, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *info) nogil
cdef cgelss_t *cgelss_f

ctypedef void cgeqp3_t(int *m, int *n, c *a, int *lda, int *jpvt, c *tau, c *work, int *lwork, s *rwork, int *info) nogil
cdef cgeqp3_t *cgeqp3_f

ctypedef void cgeqrf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
cdef cgeqrf_t *cgeqrf_f

ctypedef void cgerqf_t(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
cdef cgerqf_t *cgerqf_f

ctypedef void cgesdd_t(char *jobz, int *m, int *n, c *a, int *lda, s *s, c *u, int *ldu, c *vt, int *ldvt, c *work, int *lwork, s *rwork, int *iwork, int *info) nogil
cdef cgesdd_t *cgesdd_f

ctypedef void cgesv_t(int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil
cdef cgesv_t *cgesv_f

ctypedef void cgetrf_t(int *m, int *n, c *a, int *lda, int *ipiv, int *info) nogil
cdef cgetrf_t *cgetrf_f

ctypedef void cgetri_t(int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info) nogil
cdef cgetri_t *cgetri_f

ctypedef void cgetrs_t(char *trans, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil
cdef cgetrs_t *cgetrs_f

ctypedef void cgges_t(char *jobvsl, char *jobvsr, char *sort, cselect2 *selctg, int *n, c *a, int *lda, c *b, int *ldb, int *sdim, c *alpha, c *beta, c *vsl, int *ldvsl, c *vsr, int *ldvsr, c *work, int *lwork, s *rwork, int *bwork, int *info) nogil
cdef cgges_t *cgges_f

ctypedef void cggev_t(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil
cdef cggev_t *cggev_f

ctypedef void chbevd_t(char *jobz, char *uplo, int *n, int *kd, c *ab, int *ldab, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef chbevd_t *chbevd_f

ctypedef void chbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, c *ab, int *ldab, c *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info) nogil
cdef chbevx_t *chbevx_f

ctypedef void cheev_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *info) nogil
cdef cheev_t *cheev_f

ctypedef void cheevd_t(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef cheevd_t *cheevd_f

ctypedef void cheevr_t(char *jobz, char *range, char *uplo, int *n, c *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, int *isuppz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef cheevr_t *cheevr_f

ctypedef void chegv_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *info) nogil
cdef chegv_t *chegv_f

ctypedef void chegvd_t(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef chegvd_t *chegvd_f

ctypedef void chegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil
cdef chegvx_t *chegvx_f

ctypedef void claswp_t(int *n, c *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
cdef claswp_t *claswp_f

ctypedef void clauum_t(char *uplo, int *n, c *a, int *lda, int *info) nogil
cdef clauum_t *clauum_f

ctypedef void cpbsv_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil
cdef cpbsv_t *cpbsv_f

ctypedef void cpbtrf_t(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info) nogil
cdef cpbtrf_t *cpbtrf_f

ctypedef void cpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil
cdef cpbtrs_t *cpbtrs_f

ctypedef void cposv_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil
cdef cposv_t *cposv_f

ctypedef void cpotrf_t(char *uplo, int *n, c *a, int *lda, int *info) nogil
cdef cpotrf_t *cpotrf_f

ctypedef void cpotri_t(char *uplo, int *n, c *a, int *lda, int *info) nogil
cdef cpotri_t *cpotri_f

ctypedef void cpotrs_t(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil
cdef cpotrs_t *cpotrs_f

ctypedef void ctrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, s *scale, int *info) nogil
cdef ctrsyl_t *ctrsyl_f

ctypedef void ctrtri_t(char *uplo, char *diag, int *n, c *a, int *lda, int *info) nogil
cdef ctrtri_t *ctrtri_f

ctypedef void ctrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil
cdef ctrtrs_t *ctrtrs_f

ctypedef void cungqr_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
cdef cungqr_t *cungqr_f

ctypedef void cungrq_t(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil
cdef cungrq_t *cungrq_f

ctypedef void cunmqr_t(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil
cdef cunmqr_t *cunmqr_f

ctypedef void dgbsv_t(int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info) nogil
cdef dgbsv_t *dgbsv_f

ctypedef void dgbtrf_t(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, int *info) nogil
cdef dgbtrf_t *dgbtrf_f

ctypedef void dgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info) nogil
cdef dgbtrs_t *dgbtrs_f

ctypedef void dgebal_t(char *job, int *n, d *a, int *lda, int *ilo, int *ihi, d *scale, int *info) nogil
cdef dgebal_t *dgebal_f

ctypedef void dgees_t(char *jobvs, char *sort, dselect2 *select, int *n, d *a, int *lda, int *sdim, d *wr, d *wi, d *vs, int *ldvs, d *work, int *lwork, int *bwork, int *info) nogil
cdef dgees_t *dgees_f

ctypedef void dgeev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *wr, d *wi, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, int *info) nogil
cdef dgeev_t *dgeev_f

ctypedef void dgegv_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, s *rwork, int *info) nogil
cdef dgegv_t *dgegv_f

ctypedef void dgehrd_t(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
cdef dgehrd_t *dgehrd_f

ctypedef void dgelss_t(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, d *s, d *rcond, int *rank, d *work, int *lwork, int *info) nogil
cdef dgelss_t *dgelss_f

ctypedef void dgeqp3_t(int *m, int *n, d *a, int *lda, int *jpvt, d *tau, d *work, int *lwork, int *info) nogil
cdef dgeqp3_t *dgeqp3_f

ctypedef void dgeqrf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
cdef dgeqrf_t *dgeqrf_f

ctypedef void dgerqf_t(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
cdef dgerqf_t *dgerqf_f

ctypedef void dgesdd_t(char *jobz, int *m, int *n, d *a, int *lda, d *s, d *u, int *ldu, d *vt, int *ldvt, d *work, int *lwork, int *iwork, int *info) nogil
cdef dgesdd_t *dgesdd_f

ctypedef void dgesv_t(int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil
cdef dgesv_t *dgesv_f

ctypedef void dgetrf_t(int *m, int *n, d *a, int *lda, int *ipiv, int *info) nogil
cdef dgetrf_t *dgetrf_f

ctypedef void dgetri_t(int *n, d *a, int *lda, int *ipiv, d *work, int *lwork, int *info) nogil
cdef dgetri_t *dgetri_f

ctypedef void dgetrs_t(char *trans, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil
cdef dgetrs_t *dgetrs_f

ctypedef void dgges_t(char *jobvsl, char *jobvsr, char *sort, dselect3 *selctg, int *n, d *a, int *lda, d *b, int *ldb, int *sdim, d *alphar, d *alphai, d *beta, d *vsl, int *ldvsl, d *vsr, int *ldvsr, d *work, int *lwork, int *bwork, int *info) nogil
cdef dgges_t *dgges_f

ctypedef void dggev_t(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alphar, d *alphai, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, int *info) nogil
cdef dggev_t *dggev_f

ctypedef d dlamch_t(char *cmach) nogil
cdef dlamch_t *dlamch_f

ctypedef void dlaswp_t(int *n, d *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
cdef dlaswp_t *dlaswp_f

ctypedef void dlauum_t(char *uplo, int *n, d *a, int *lda, int *info) nogil
cdef dlauum_t *dlauum_f

ctypedef void dorgqr_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
cdef dorgqr_t *dorgqr_f

ctypedef void dorgrq_t(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil
cdef dorgrq_t *dorgrq_f

ctypedef void dormqr_t(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil
cdef dormqr_t *dormqr_f

ctypedef void dpbsv_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil
cdef dpbsv_t *dpbsv_f

ctypedef void dpbtrf_t(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info) nogil
cdef dpbtrf_t *dpbtrf_f

ctypedef void dpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil
cdef dpbtrs_t *dpbtrs_f

ctypedef void dposv_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil
cdef dposv_t *dposv_f

ctypedef void dpotrf_t(char *uplo, int *n, d *a, int *lda, int *info) nogil
cdef dpotrf_t *dpotrf_f

ctypedef void dpotri_t(char *uplo, int *n, d *a, int *lda, int *info) nogil
cdef dpotri_t *dpotri_f

ctypedef void dpotrs_t(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil
cdef dpotrs_t *dpotrs_f

ctypedef void dsbev_t(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, d *w, d *z, int *ldz, d *work, int *info) nogil
cdef dsbev_t *dsbev_f

ctypedef void dsbevd_t(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef dsbevd_t *dsbevd_f

ctypedef void dsbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, d *ab, int *ldab, d *q, int *ldq, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil
cdef dsbevx_t *dsbevx_f

ctypedef void dsyev_t(char *jobz, char *uplo, int *n, d *a, int *lda, d *w, d *work, int *lwork, int *info) nogil
cdef dsyev_t *dsyev_f

ctypedef void dsyevd_t(char *jobz, char *uplo, int *n, d *a, int *lda, d *w, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef dsyevd_t *dsyevd_f

ctypedef void dsyevr_t(char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef dsyevr_t *dsyevr_f

ctypedef void dsygv_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, d *w, d *work, int *lwork, int *info) nogil
cdef dsygv_t *dsygv_f

ctypedef void dsygvd_t(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, d *w, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef dsygvd_t *dsygvd_f

ctypedef void dsygvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *ifail, int *info) nogil
cdef dsygvx_t *dsygvx_f

ctypedef void dtrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, d *scale, int *info) nogil
cdef dtrsyl_t *dtrsyl_f

ctypedef void dtrtri_t(char *uplo, char *diag, int *n, d *a, int *lda, int *info) nogil
cdef dtrtri_t *dtrtri_f

ctypedef void dtrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil
cdef dtrtrs_t *dtrtrs_f

ctypedef void sgbsv_t(int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info) nogil
cdef sgbsv_t *sgbsv_f

ctypedef void sgbtrf_t(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, int *info) nogil
cdef sgbtrf_t *sgbtrf_f

ctypedef void sgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info) nogil
cdef sgbtrs_t *sgbtrs_f

ctypedef void sgebal_t(char *job, int *n, s *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil
cdef sgebal_t *sgebal_f

ctypedef void sgees_t(char *jobvs, char *sort, sselect2 *select, int *n, s *a, int *lda, int *sdim, s *wr, s *wi, s *vs, int *ldvs, s *work, int *lwork, int *bwork, int *info) nogil
cdef sgees_t *sgees_f

ctypedef void sgeev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *wr, s *wi, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, int *info) nogil
cdef sgeev_t *sgeev_f

ctypedef void sgegv_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, s *rwork, int *info) nogil
cdef sgegv_t *sgegv_f

ctypedef void sgehrd_t(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
cdef sgehrd_t *sgehrd_f

ctypedef void sgelss_t(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *s, s *rcond, int *rank, s *work, int *lwork, int *info) nogil
cdef sgelss_t *sgelss_f

ctypedef void sgeqp3_t(int *m, int *n, s *a, int *lda, int *jpvt, s *tau, s *work, int *lwork, int *info) nogil
cdef sgeqp3_t *sgeqp3_f

ctypedef void sgeqrf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
cdef sgeqrf_t *sgeqrf_f

ctypedef void sgerqf_t(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
cdef sgerqf_t *sgerqf_f

ctypedef void sgesdd_t(char *jobz, int *m, int *n, s *a, int *lda, s *s, s *u, int *ldu, s *vt, int *ldvt, s *work, int *lwork, int *iwork, int *info) nogil
cdef sgesdd_t *sgesdd_f

ctypedef void sgesv_t(int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil
cdef sgesv_t *sgesv_f

ctypedef void sgetrf_t(int *m, int *n, s *a, int *lda, int *ipiv, int *info) nogil
cdef sgetrf_t *sgetrf_f

ctypedef void sgetri_t(int *n, s *a, int *lda, int *ipiv, s *work, int *lwork, int *info) nogil
cdef sgetri_t *sgetri_f

ctypedef void sgetrs_t(char *trans, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil
cdef sgetrs_t *sgetrs_f

ctypedef void sgges_t(char *jobvsl, char *jobvsr, char *sort, sselect3 *selctg, int *n, s *a, int *lda, s *b, int *ldb, int *sdim, s *alphar, s *alphai, s *beta, s *vsl, int *ldvsl, s *vsr, int *ldvsr, s *work, int *lwork, int *bwork, int *info) nogil
cdef sgges_t *sgges_f

ctypedef void sggev_t(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alphar, s *alphai, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, int *info) nogil
cdef sggev_t *sggev_f

ctypedef s slamch_t(char *cmach) nogil
cdef slamch_t *slamch_f

ctypedef void slaswp_t(int *n, s *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
cdef slaswp_t *slaswp_f

ctypedef void slauum_t(char *uplo, int *n, s *a, int *lda, int *info) nogil
cdef slauum_t *slauum_f

ctypedef void sorgqr_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
cdef sorgqr_t *sorgqr_f

ctypedef void sorgrq_t(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil
cdef sorgrq_t *sorgrq_f

ctypedef void sormqr_t(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil
cdef sormqr_t *sormqr_f

ctypedef void spbsv_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil
cdef spbsv_t *spbsv_f

ctypedef void spbtrf_t(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info) nogil
cdef spbtrf_t *spbtrf_f

ctypedef void spbtrs_t(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil
cdef spbtrs_t *spbtrs_f

ctypedef void sposv_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil
cdef sposv_t *sposv_f

ctypedef void spotrf_t(char *uplo, int *n, s *a, int *lda, int *info) nogil
cdef spotrf_t *spotrf_f

ctypedef void spotri_t(char *uplo, int *n, s *a, int *lda, int *info) nogil
cdef spotri_t *spotri_f

ctypedef void spotrs_t(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil
cdef spotrs_t *spotrs_f

ctypedef void ssbev_t(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *info) nogil
cdef ssbev_t *ssbev_f

ctypedef void ssbevd_t(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef ssbevd_t *ssbevd_f

ctypedef void ssbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, s *ab, int *ldab, s *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil
cdef ssbevx_t *ssbevx_f

ctypedef void ssyev_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, int *info) nogil
cdef ssyev_t *ssyev_f

ctypedef void ssyevd_t(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef ssyevd_t *ssyevd_f

ctypedef void ssyevr_t(char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef ssyevr_t *ssyevr_f

ctypedef void ssygv_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, int *info) nogil
cdef ssygv_t *ssygv_f

ctypedef void ssygvd_t(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil
cdef ssygvd_t *ssygvd_f

ctypedef void ssygvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *ifail, int *info) nogil
cdef ssygvx_t *ssygvx_f

ctypedef void strsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *scale, int *info) nogil
cdef strsyl_t *strsyl_f

ctypedef void strtri_t(char *uplo, char *diag, int *n, s *a, int *lda, int *info) nogil
cdef strtri_t *strtri_f

ctypedef void strtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil
cdef strtrs_t *strtrs_f

ctypedef void zgbsv_t(int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info) nogil
cdef zgbsv_t *zgbsv_f

ctypedef void zgbtrf_t(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, int *info) nogil
cdef zgbtrf_t *zgbtrf_f

ctypedef void zgbtrs_t(char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info) nogil
cdef zgbtrs_t *zgbtrs_f

ctypedef void zgebal_t(char *job, int *n, z *a, int *lda, int *ilo, int *ihi, d *scale, int *info) nogil
cdef zgebal_t *zgebal_f

ctypedef void zgees_t(char *jobvs, char *sort, zselect1 *select, int *n, z *a, int *lda, int *sdim, z *w, z *vs, int *ldvs, z *work, int *lwork, d *rwork, int *bwork, int *info) nogil
cdef zgees_t *zgees_f

ctypedef void zgeev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *w, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, d *rwork, int *info) nogil
cdef zgeev_t *zgeev_f

ctypedef void zgegv_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, s *rwork, int *info) nogil
cdef zgegv_t *zgegv_f

ctypedef void zgehrd_t(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
cdef zgehrd_t *zgehrd_f

ctypedef void zgelss_t(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, d *s, d *rcond, int *rank, z *work, int *lwork, d *rwork, int *info) nogil
cdef zgelss_t *zgelss_f

ctypedef void zgeqp3_t(int *m, int *n, z *a, int *lda, int *jpvt, z *tau, z *work, int *lwork, d *rwork, int *info) nogil
cdef zgeqp3_t *zgeqp3_f

ctypedef void zgeqrf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
cdef zgeqrf_t *zgeqrf_f

ctypedef void zgerqf_t(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
cdef zgerqf_t *zgerqf_f

ctypedef void zgesdd_t(char *jobz, int *m, int *n, z *a, int *lda, d *s, z *u, int *ldu, z *vt, int *ldvt, z *work, int *lwork, d *rwork, int *iwork, int *info) nogil
cdef zgesdd_t *zgesdd_f

ctypedef void zgesv_t(int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil
cdef zgesv_t *zgesv_f

ctypedef void zgetrf_t(int *m, int *n, z *a, int *lda, int *ipiv, int *info) nogil
cdef zgetrf_t *zgetrf_f

ctypedef void zgetri_t(int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info) nogil
cdef zgetri_t *zgetri_f

ctypedef void zgetrs_t(char *trans, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil
cdef zgetrs_t *zgetrs_f

ctypedef void zgges_t(char *jobvsl, char *jobvsr, char *sort, zselect2 *selctg, int *n, z *a, int *lda, z *b, int *ldb, int *sdim, z *alpha, z *beta, z *vsl, int *ldvsl, z *vsr, int *ldvsr, z *work, int *lwork, d *rwork, int *bwork, int *info) nogil
cdef zgges_t *zgges_f

ctypedef void zggev_t(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, d *rwork, int *info) nogil
cdef zggev_t *zggev_f

ctypedef void zhbevd_t(char *jobz, char *uplo, int *n, int *kd, z *ab, int *ldab, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef zhbevd_t *zhbevd_f

ctypedef void zhbevx_t(char *jobz, char *range, char *uplo, int *n, int *kd, z *ab, int *ldab, z *q, int *ldq, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, d *rwork, int *iwork, int *ifail, int *info) nogil
cdef zhbevx_t *zhbevx_f

ctypedef void zheev_t(char *jobz, char *uplo, int *n, z *a, int *lda, d *w, z *work, int *lwork, d *rwork, int *info) nogil
cdef zheev_t *zheev_f

ctypedef void zheevd_t(char *jobz, char *uplo, int *n, z *a, int *lda, d *w, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef zheevd_t *zheevd_f

ctypedef void zheevr_t(char *jobz, char *range, char *uplo, int *n, z *a, int *lda, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, int *isuppz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef zheevr_t *zheevr_f

ctypedef void zhegv_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, d *w, z *work, int *lwork, d *rwork, int *info) nogil
cdef zhegv_t *zhegv_f

ctypedef void zhegvd_t(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, d *w, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil
cdef zhegvd_t *zhegvd_f

ctypedef void zhegvx_t(int *itype, char *jobz, char *range, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *iwork, int *ifail, int *info) nogil
cdef zhegvx_t *zhegvx_f

ctypedef void zlaswp_t(int *n, z *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil
cdef zlaswp_t *zlaswp_f

ctypedef void zlauum_t(char *uplo, int *n, z *a, int *lda, int *info) nogil
cdef zlauum_t *zlauum_f

ctypedef void zpbsv_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil
cdef zpbsv_t *zpbsv_f

ctypedef void zpbtrf_t(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info) nogil
cdef zpbtrf_t *zpbtrf_f

ctypedef void zpbtrs_t(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil
cdef zpbtrs_t *zpbtrs_f

ctypedef void zposv_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil
cdef zposv_t *zposv_f

ctypedef void zpotrf_t(char *uplo, int *n, z *a, int *lda, int *info) nogil
cdef zpotrf_t *zpotrf_f

ctypedef void zpotri_t(char *uplo, int *n, z *a, int *lda, int *info) nogil
cdef zpotri_t *zpotri_f

ctypedef void zpotrs_t(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil
cdef zpotrs_t *zpotrs_f

ctypedef void ztrsyl_t(char *trana, char *tranb, int *isgn, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, d *scale, int *info) nogil
cdef ztrsyl_t *ztrsyl_f

ctypedef void ztrtri_t(char *uplo, char *diag, int *n, z *a, int *lda, int *info) nogil
cdef ztrtri_t *ztrtri_f

ctypedef void ztrtrs_t(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil
cdef ztrtrs_t *ztrtrs_f

ctypedef void zungqr_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
cdef zungqr_t *zungqr_f

ctypedef void zungrq_t(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil
cdef zungrq_t *zungrq_f

ctypedef void zunmqr_t(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil
cdef zunmqr_t *zunmqr_f
