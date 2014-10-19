from . import lapack

cdef:
    cgbsv_t *_cgbsv = <cgbsv_t*>f2py_ptr(lapack.cgbsv._cpointer)
    cgbtrf_t *_cgbtrf = <cgbtrf_t*>f2py_ptr(lapack.cgbtrf._cpointer)
    cgbtrs_t *_cgbtrs = <cgbtrs_t*>f2py_ptr(lapack.cgbtrs._cpointer)
    cgebal_t *_cgebal = <cgebal_t*>f2py_ptr(lapack.cgebal._cpointer)
    # cgees_t *_cgees = <cgees_t*>f2py_ptr(lapack.cgees._cpointer)
    cgeev_t *_cgeev = <cgeev_t*>f2py_ptr(lapack.cgeev._cpointer)
    cgegv_t *_cgegv = <cgegv_t*>f2py_ptr(lapack.cgegv._cpointer)
    cgehrd_t *_cgehrd = <cgehrd_t*>f2py_ptr(lapack.cgehrd._cpointer)
    cgelss_t *_cgelss = <cgelss_t*>f2py_ptr(lapack.cgelss._cpointer)
    cgeqp3_t *_cgeqp3 = <cgeqp3_t*>f2py_ptr(lapack.cgeqp3._cpointer)
    cgeqrf_t *_cgeqrf = <cgeqrf_t*>f2py_ptr(lapack.cgeqrf._cpointer)
    cgerqf_t *_cgerqf = <cgerqf_t*>f2py_ptr(lapack.cgerqf._cpointer)
    cgesdd_t *_cgesdd = <cgesdd_t*>f2py_ptr(lapack.cgesdd._cpointer)
    cgesv_t *_cgesv = <cgesv_t*>f2py_ptr(lapack.cgesv._cpointer)
    cgetrf_t *_cgetrf = <cgetrf_t*>f2py_ptr(lapack.cgetrf._cpointer)
    cgetri_t *_cgetri = <cgetri_t*>f2py_ptr(lapack.cgetri._cpointer)
    cgetrs_t *_cgetrs = <cgetrs_t*>f2py_ptr(lapack.cgetrs._cpointer)
    # cgges_t *_cgges = <cgges_t*>f2py_ptr(lapack.cgges._cpointer)
    cggev_t *_cggev = <cggev_t*>f2py_ptr(lapack.cggev._cpointer)
    chbevd_t *_chbevd = <chbevd_t*>f2py_ptr(lapack.chbevd._cpointer)
    chbevx_t *_chbevx = <chbevx_t*>f2py_ptr(lapack.chbevx._cpointer)
    cheev_t *_cheev = <cheev_t*>f2py_ptr(lapack.cheev._cpointer)
    cheevd_t *_cheevd = <cheevd_t*>f2py_ptr(lapack.cheevd._cpointer)
    cheevr_t *_cheevr = <cheevr_t*>f2py_ptr(lapack.cheevr._cpointer)
    chegv_t *_chegv = <chegv_t*>f2py_ptr(lapack.chegv._cpointer)
    chegvd_t *_chegvd = <chegvd_t*>f2py_ptr(lapack.chegvd._cpointer)
    chegvx_t *_chegvx = <chegvx_t*>f2py_ptr(lapack.chegvx._cpointer)
    claswp_t *_claswp = <claswp_t*>f2py_ptr(lapack.claswp._cpointer)
    clauum_t *_clauum = <clauum_t*>f2py_ptr(lapack.clauum._cpointer)
    cpbsv_t *_cpbsv = <cpbsv_t*>f2py_ptr(lapack.cpbsv._cpointer)
    cpbtrf_t *_cpbtrf = <cpbtrf_t*>f2py_ptr(lapack.cpbtrf._cpointer)
    cpbtrs_t *_cpbtrs = <cpbtrs_t*>f2py_ptr(lapack.cpbtrs._cpointer)
    cposv_t *_cposv = <cposv_t*>f2py_ptr(lapack.cposv._cpointer)
    cpotrf_t *_cpotrf = <cpotrf_t*>f2py_ptr(lapack.cpotrf._cpointer)
    cpotri_t *_cpotri = <cpotri_t*>f2py_ptr(lapack.cpotri._cpointer)
    cpotrs_t *_cpotrs = <cpotrs_t*>f2py_ptr(lapack.cpotrs._cpointer)
    ctrsyl_t *_ctrsyl = <ctrsyl_t*>f2py_ptr(lapack.ctrsyl._cpointer)
    ctrtri_t *_ctrtri = <ctrtri_t*>f2py_ptr(lapack.ctrtri._cpointer)
    ctrtrs_t *_ctrtrs = <ctrtrs_t*>f2py_ptr(lapack.ctrtrs._cpointer)
    cungqr_t *_cungqr = <cungqr_t*>f2py_ptr(lapack.cungqr._cpointer)
    cungrq_t *_cungrq = <cungrq_t*>f2py_ptr(lapack.cungrq._cpointer)
    cunmqr_t *_cunmqr = <cunmqr_t*>f2py_ptr(lapack.cunmqr._cpointer)
    dgbsv_t *_dgbsv = <dgbsv_t*>f2py_ptr(lapack.dgbsv._cpointer)
    dgbtrf_t *_dgbtrf = <dgbtrf_t*>f2py_ptr(lapack.dgbtrf._cpointer)
    dgbtrs_t *_dgbtrs = <dgbtrs_t*>f2py_ptr(lapack.dgbtrs._cpointer)
    dgebal_t *_dgebal = <dgebal_t*>f2py_ptr(lapack.dgebal._cpointer)
    # dgees_t *_dgees = <dgees_t*>f2py_ptr(lapack.dgees._cpointer)
    dgeev_t *_dgeev = <dgeev_t*>f2py_ptr(lapack.dgeev._cpointer)
    dgegv_t *_dgegv = <dgegv_t*>f2py_ptr(lapack.dgegv._cpointer)
    dgehrd_t *_dgehrd = <dgehrd_t*>f2py_ptr(lapack.dgehrd._cpointer)
    dgelss_t *_dgelss = <dgelss_t*>f2py_ptr(lapack.dgelss._cpointer)
    dgeqp3_t *_dgeqp3 = <dgeqp3_t*>f2py_ptr(lapack.dgeqp3._cpointer)
    dgeqrf_t *_dgeqrf = <dgeqrf_t*>f2py_ptr(lapack.dgeqrf._cpointer)
    dgerqf_t *_dgerqf = <dgerqf_t*>f2py_ptr(lapack.dgerqf._cpointer)
    dgesdd_t *_dgesdd = <dgesdd_t*>f2py_ptr(lapack.dgesdd._cpointer)
    dgesv_t *_dgesv = <dgesv_t*>f2py_ptr(lapack.dgesv._cpointer)
    dgetrf_t *_dgetrf = <dgetrf_t*>f2py_ptr(lapack.dgetrf._cpointer)
    dgetri_t *_dgetri = <dgetri_t*>f2py_ptr(lapack.dgetri._cpointer)
    dgetrs_t *_dgetrs = <dgetrs_t*>f2py_ptr(lapack.dgetrs._cpointer)
    # dgges_t *_dgges = <dgges_t*>f2py_ptr(lapack.dgges._cpointer)
    dggev_t *_dggev = <dggev_t*>f2py_ptr(lapack.dggev._cpointer)
    dlaswp_t *_dlaswp = <dlaswp_t*>f2py_ptr(lapack.dlaswp._cpointer)
    dlauum_t *_dlauum = <dlauum_t*>f2py_ptr(lapack.dlauum._cpointer)
    dpbsv_t *_dpbsv = <dpbsv_t*>f2py_ptr(lapack.dpbsv._cpointer)
    dpbtrf_t *_dpbtrf = <dpbtrf_t*>f2py_ptr(lapack.dpbtrf._cpointer)
    dpbtrs_t *_dpbtrs = <dpbtrs_t*>f2py_ptr(lapack.dpbtrs._cpointer)
    dposv_t *_dposv = <dposv_t*>f2py_ptr(lapack.dposv._cpointer)
    dpotrf_t *_dpotrf = <dpotrf_t*>f2py_ptr(lapack.dpotrf._cpointer)
    dpotri_t *_dpotri = <dpotri_t*>f2py_ptr(lapack.dpotri._cpointer)
    dpotrs_t *_dpotrs = <dpotrs_t*>f2py_ptr(lapack.dpotrs._cpointer)
    dtrsyl_t *_dtrsyl = <dtrsyl_t*>f2py_ptr(lapack.dtrsyl._cpointer)
    dtrtri_t *_dtrtri = <dtrtri_t*>f2py_ptr(lapack.dtrtri._cpointer)
    dtrtrs_t *_dtrtrs = <dtrtrs_t*>f2py_ptr(lapack.dtrtrs._cpointer)
    sgbsv_t *_sgbsv = <sgbsv_t*>f2py_ptr(lapack.sgbsv._cpointer)
    sgbtrf_t *_sgbtrf = <sgbtrf_t*>f2py_ptr(lapack.sgbtrf._cpointer)
    sgbtrs_t *_sgbtrs = <sgbtrs_t*>f2py_ptr(lapack.sgbtrs._cpointer)
    sgebal_t *_sgebal = <sgebal_t*>f2py_ptr(lapack.sgebal._cpointer)
    # sgees_t *_sgees = <sgees_t*>f2py_ptr(lapack.sgees._cpointer)
    sgeev_t *_sgeev = <sgeev_t*>f2py_ptr(lapack.sgeev._cpointer)
    sgegv_t *_sgegv = <sgegv_t*>f2py_ptr(lapack.sgegv._cpointer)
    sgehrd_t *_sgehrd = <sgehrd_t*>f2py_ptr(lapack.sgehrd._cpointer)
    sgelss_t *_sgelss = <sgelss_t*>f2py_ptr(lapack.sgelss._cpointer)
    sgeqp3_t *_sgeqp3 = <sgeqp3_t*>f2py_ptr(lapack.sgeqp3._cpointer)
    sgeqrf_t *_sgeqrf = <sgeqrf_t*>f2py_ptr(lapack.sgeqrf._cpointer)
    sgerqf_t *_sgerqf = <sgerqf_t*>f2py_ptr(lapack.sgerqf._cpointer)
    sgesdd_t *_sgesdd = <sgesdd_t*>f2py_ptr(lapack.sgesdd._cpointer)
    sgesv_t *_sgesv = <sgesv_t*>f2py_ptr(lapack.sgesv._cpointer)
    sgetrf_t *_sgetrf = <sgetrf_t*>f2py_ptr(lapack.sgetrf._cpointer)
    sgetri_t *_sgetri = <sgetri_t*>f2py_ptr(lapack.sgetri._cpointer)
    sgetrs_t *_sgetrs = <sgetrs_t*>f2py_ptr(lapack.sgetrs._cpointer)
    # sgges_t *_sgges = <sgges_t*>f2py_ptr(lapack.sgges._cpointer)
    sggev_t *_sggev = <sggev_t*>f2py_ptr(lapack.sggev._cpointer)
    slaswp_t *_slaswp = <slaswp_t*>f2py_ptr(lapack.slaswp._cpointer)
    slauum_t *_slauum = <slauum_t*>f2py_ptr(lapack.slauum._cpointer)
    spbsv_t *_spbsv = <spbsv_t*>f2py_ptr(lapack.spbsv._cpointer)
    spbtrf_t *_spbtrf = <spbtrf_t*>f2py_ptr(lapack.spbtrf._cpointer)
    spbtrs_t *_spbtrs = <spbtrs_t*>f2py_ptr(lapack.spbtrs._cpointer)
    sposv_t *_sposv = <sposv_t*>f2py_ptr(lapack.sposv._cpointer)
    spotrf_t *_spotrf = <spotrf_t*>f2py_ptr(lapack.spotrf._cpointer)
    spotri_t *_spotri = <spotri_t*>f2py_ptr(lapack.spotri._cpointer)
    spotrs_t *_spotrs = <spotrs_t*>f2py_ptr(lapack.spotrs._cpointer)
    strsyl_t *_strsyl = <strsyl_t*>f2py_ptr(lapack.strsyl._cpointer)
    strtri_t *_strtri = <strtri_t*>f2py_ptr(lapack.strtri._cpointer)
    strtrs_t *_strtrs = <strtrs_t*>f2py_ptr(lapack.strtrs._cpointer)
    zgbsv_t *_zgbsv = <zgbsv_t*>f2py_ptr(lapack.zgbsv._cpointer)
    zgbtrf_t *_zgbtrf = <zgbtrf_t*>f2py_ptr(lapack.zgbtrf._cpointer)
    zgbtrs_t *_zgbtrs = <zgbtrs_t*>f2py_ptr(lapack.zgbtrs._cpointer)
    zgebal_t *_zgebal = <zgebal_t*>f2py_ptr(lapack.zgebal._cpointer)
    # zgees_t *_zgees = <zgees_t*>f2py_ptr(lapack.zgees._cpointer)
    zgeev_t *_zgeev = <zgeev_t*>f2py_ptr(lapack.zgeev._cpointer)
    zgegv_t *_zgegv = <zgegv_t*>f2py_ptr(lapack.zgegv._cpointer)
    zgehrd_t *_zgehrd = <zgehrd_t*>f2py_ptr(lapack.zgehrd._cpointer)
    zgelss_t *_zgelss = <zgelss_t*>f2py_ptr(lapack.zgelss._cpointer)
    zgeqp3_t *_zgeqp3 = <zgeqp3_t*>f2py_ptr(lapack.zgeqp3._cpointer)
    zgeqrf_t *_zgeqrf = <zgeqrf_t*>f2py_ptr(lapack.zgeqrf._cpointer)
    zgerqf_t *_zgerqf = <zgerqf_t*>f2py_ptr(lapack.zgerqf._cpointer)
    zgesdd_t *_zgesdd = <zgesdd_t*>f2py_ptr(lapack.zgesdd._cpointer)
    zgesv_t *_zgesv = <zgesv_t*>f2py_ptr(lapack.zgesv._cpointer)
    zgetrf_t *_zgetrf = <zgetrf_t*>f2py_ptr(lapack.zgetrf._cpointer)
    zgetri_t *_zgetri = <zgetri_t*>f2py_ptr(lapack.zgetri._cpointer)
    zgetrs_t *_zgetrs = <zgetrs_t*>f2py_ptr(lapack.zgetrs._cpointer)
    # zgges_t *_zgges = <zgges_t*>f2py_ptr(lapack.zgges._cpointer)
    zggev_t *_zggev = <zggev_t*>f2py_ptr(lapack.zggev._cpointer)
    zhbevd_t *_zhbevd = <zhbevd_t*>f2py_ptr(lapack.zhbevd._cpointer)
    zhbevx_t *_zhbevx = <zhbevx_t*>f2py_ptr(lapack.zhbevx._cpointer)
    zheev_t *_zheev = <zheev_t*>f2py_ptr(lapack.zheev._cpointer)
    zheevd_t *_zheevd = <zheevd_t*>f2py_ptr(lapack.zheevd._cpointer)
    zheevr_t *_zheevr = <zheevr_t*>f2py_ptr(lapack.zheevr._cpointer)
    zhegv_t *_zhegv = <zhegv_t*>f2py_ptr(lapack.zhegv._cpointer)
    zhegvd_t *_zhegvd = <zhegvd_t*>f2py_ptr(lapack.zhegvd._cpointer)
    zhegvx_t *_zhegvx = <zhegvx_t*>f2py_ptr(lapack.zhegvx._cpointer)
    zlaswp_t *_zlaswp = <zlaswp_t*>f2py_ptr(lapack.zlaswp._cpointer)
    zlauum_t *_zlauum = <zlauum_t*>f2py_ptr(lapack.zlauum._cpointer)
    zpbsv_t *_zpbsv = <zpbsv_t*>f2py_ptr(lapack.zpbsv._cpointer)
    zpbtrf_t *_zpbtrf = <zpbtrf_t*>f2py_ptr(lapack.zpbtrf._cpointer)
    zpbtrs_t *_zpbtrs = <zpbtrs_t*>f2py_ptr(lapack.zpbtrs._cpointer)
    zposv_t *_zposv = <zposv_t*>f2py_ptr(lapack.zposv._cpointer)
    zpotrf_t *_zpotrf = <zpotrf_t*>f2py_ptr(lapack.zpotrf._cpointer)
    zpotri_t *_zpotri = <zpotri_t*>f2py_ptr(lapack.zpotri._cpointer)
    zpotrs_t *_zpotrs = <zpotrs_t*>f2py_ptr(lapack.zpotrs._cpointer)
    ztrsyl_t *_ztrsyl = <ztrsyl_t*>f2py_ptr(lapack.ztrsyl._cpointer)
    ztrtri_t *_ztrtri = <ztrtri_t*>f2py_ptr(lapack.ztrtri._cpointer)
    ztrtrs_t *_ztrtrs = <ztrtrs_t*>f2py_ptr(lapack.ztrtrs._cpointer)
    zungqr_t *_zungqr = <zungqr_t*>f2py_ptr(lapack.zungqr._cpointer)
    zungrq_t *_zungrq = <zungrq_t*>f2py_ptr(lapack.zungrq._cpointer)
    zunmqr_t *_zunmqr = <zunmqr_t*>f2py_ptr(lapack.zunmqr._cpointer)
