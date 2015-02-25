"""
Function pointers to BLAS functions.

BLAS Functions
==============

- caxpy
- ccopy
- cdotc
- cdotu
- cgemm
- cgemv
- cgerc
- cgeru
- chemm
- chemv
- cher
- cher2
- cher2k
- cherk
- crotg
- cscal
- csrot
- csscal
- cswap
- csymm
- csyr
- csyr2k
- csyrk
- ctrmm
- ctrmv
- dasum
- daxpy
- dcopy
- ddot
- dgemm
- dgemv
- dger
- dnrm2
- drot
- drotg
- drotm
- drotmg
- dscal
- dswap
- dsymm
- dsymv
- dsyr
- dsyr2
- dsyr2k
- dsyrk
- dtrmm
- dtrmv
- dzasum
- dznrm2
- icamax
- idamax
- isamax
- izamax
- sasum
- saxpy
- scasum
- scnrm2
- scopy
- sdot
- sgemm
- sgemv
- sger
- snrm2
- srot
- srotg
- srotm
- srotmg
- sscal
- sswap
- ssymm
- ssymv
- ssyr
- ssyr2
- ssyr2k
- ssyrk
- strmm
- strmv
- zaxpy
- zcopy
- zdotc
- zdotu
- zdrot
- zdscal
- zgemm
- zgemv
- zgerc
- zgeru
- zhemm
- zhemv
- zher
- zher2
- zher2k
- zherk
- zrotg
- zscal
- zswap
- zsymm
- zsyr
- zsyr2k
- zsyrk
- ztrmm
- ztrmv

"""

from . import  blas

cdef extern from "f2pyptr.h":
    void *f2py_ptr(object) except NULL

cdef:
    caxpy_t *caxpy = <caxpy_t*>f2py_ptr(blas.caxpy._cpointer)
    ccopy_t *ccopy = <ccopy_t*>f2py_ptr(blas.ccopy._cpointer)
    cdotc_t *cdotc = <cdotc_t*>f2py_ptr(blas.wcdotc._cpointer)
    cdotu_t *cdotu = <cdotu_t*>f2py_ptr(blas.wcdotu._cpointer)
    cgemm_t *cgemm = <cgemm_t*>f2py_ptr(blas.cgemm._cpointer)
    cgemv_t *cgemv = <cgemv_t*>f2py_ptr(blas.cgemv._cpointer)
    cgerc_t *cgerc = <cgerc_t*>f2py_ptr(blas.cgerc._cpointer)
    cgeru_t *cgeru = <cgeru_t*>f2py_ptr(blas.cgeru._cpointer)
    chemm_t *chemm = <chemm_t*>f2py_ptr(blas.chemm._cpointer)
    chemv_t *chemv = <chemv_t*>f2py_ptr(blas.chemv._cpointer)
    cher_t *cher = <cher_t*>f2py_ptr(blas.cher._cpointer)
    cher2_t *cher2 = <cher2_t*>f2py_ptr(blas.cher2._cpointer)
    cher2k_t *cher2k = <cher2k_t*>f2py_ptr(blas.cher2k._cpointer)
    cherk_t *cherk = <cherk_t*>f2py_ptr(blas.cherk._cpointer)
    crotg_t *crotg = <crotg_t*>f2py_ptr(blas.crotg._cpointer)
    cscal_t *cscal = <cscal_t*>f2py_ptr(blas.cscal._cpointer)
    csrot_t *csrot = <csrot_t*>f2py_ptr(blas.csrot._cpointer)
    csscal_t *csscal = <csscal_t*>f2py_ptr(blas.csscal._cpointer)
    cswap_t *cswap = <cswap_t*>f2py_ptr(blas.cswap._cpointer)
    csymm_t *csymm = <csymm_t*>f2py_ptr(blas.csymm._cpointer)
    csyr_t *csyr = <csyr_t*>f2py_ptr(blas.csyr._cpointer)
    csyr2k_t *csyr2k = <csyr2k_t*>f2py_ptr(blas.csyr2k._cpointer)
    csyrk_t *csyrk = <csyrk_t*>f2py_ptr(blas.csyrk._cpointer)
    ctrmm_t *ctrmm = <ctrmm_t*>f2py_ptr(blas.ctrmm._cpointer)
    ctrmv_t *ctrmv = <ctrmv_t*>f2py_ptr(blas.ctrmv._cpointer)
    dasum_t *dasum = <dasum_t*>f2py_ptr(blas.dasum._cpointer)
    daxpy_t *daxpy = <daxpy_t*>f2py_ptr(blas.daxpy._cpointer)
    dcopy_t *dcopy = <dcopy_t*>f2py_ptr(blas.dcopy._cpointer)
    ddot_t *ddot = <ddot_t*>f2py_ptr(blas.ddot._cpointer)
    dgemm_t *dgemm = <dgemm_t*>f2py_ptr(blas.dgemm._cpointer)
    dgemv_t *dgemv = <dgemv_t*>f2py_ptr(blas.dgemv._cpointer)
    dger_t *dger = <dger_t*>f2py_ptr(blas.dger._cpointer)
    dnrm2_t *dnrm2 = <dnrm2_t*>f2py_ptr(blas.dnrm2._cpointer)
    drot_t *drot = <drot_t*>f2py_ptr(blas.drot._cpointer)
    drotg_t *drotg = <drotg_t*>f2py_ptr(blas.drotg._cpointer)
    drotm_t *drotm = <drotm_t*>f2py_ptr(blas.drotm._cpointer)
    drotmg_t *drotmg = <drotmg_t*>f2py_ptr(blas.drotmg._cpointer)
    dscal_t *dscal = <dscal_t*>f2py_ptr(blas.dscal._cpointer)
    dswap_t *dswap = <dswap_t*>f2py_ptr(blas.dswap._cpointer)
    dsymm_t *dsymm = <dsymm_t*>f2py_ptr(blas.dsymm._cpointer)
    dsymv_t *dsymv = <dsymv_t*>f2py_ptr(blas.dsymv._cpointer)
    dsyr_t *dsyr = <dsyr_t*>f2py_ptr(blas.dsyr._cpointer)
    dsyr2_t *dsyr2 = <dsyr2_t*>f2py_ptr(blas.dsyr2._cpointer)
    dsyr2k_t *dsyr2k = <dsyr2k_t*>f2py_ptr(blas.dsyr2k._cpointer)
    dsyrk_t *dsyrk = <dsyrk_t*>f2py_ptr(blas.dsyrk._cpointer)
    dtrmm_t *dtrmm = <dtrmm_t*>f2py_ptr(blas.dtrmm._cpointer)
    dtrmv_t *dtrmv = <dtrmv_t*>f2py_ptr(blas.dtrmv._cpointer)
    dzasum_t *dzasum = <dzasum_t*>f2py_ptr(blas.dzasum._cpointer)
    dznrm2_t *dznrm2 = <dznrm2_t*>f2py_ptr(blas.dznrm2._cpointer)
    icamax_t *icamax = <icamax_t*>f2py_ptr(blas.icamax._cpointer)
    idamax_t *idamax = <idamax_t*>f2py_ptr(blas.idamax._cpointer)
    isamax_t *isamax = <isamax_t*>f2py_ptr(blas.isamax._cpointer)
    izamax_t *izamax = <izamax_t*>f2py_ptr(blas.izamax._cpointer)
    sasum_t *sasum = <sasum_t*>f2py_ptr(blas.wsasum._cpointer)
    saxpy_t *saxpy = <saxpy_t*>f2py_ptr(blas.saxpy._cpointer)
    scasum_t *scasum = <scasum_t*>f2py_ptr(blas.wscasum._cpointer)
    scnrm2_t *scnrm2 = <scnrm2_t*>f2py_ptr(blas.wscnrm2._cpointer)
    scopy_t *scopy = <scopy_t*>f2py_ptr(blas.scopy._cpointer)
    sdot_t *sdot = <sdot_t*>f2py_ptr(blas.wsdot._cpointer)
    sgemm_t *sgemm = <sgemm_t*>f2py_ptr(blas.sgemm._cpointer)
    sgemv_t *sgemv = <sgemv_t*>f2py_ptr(blas.sgemv._cpointer)
    sger_t *sger = <sger_t*>f2py_ptr(blas.sger._cpointer)
    snrm2_t *snrm2 = <snrm2_t*>f2py_ptr(blas.wsnrm2._cpointer)
    srot_t *srot = <srot_t*>f2py_ptr(blas.srot._cpointer)
    srotg_t *srotg = <srotg_t*>f2py_ptr(blas.srotg._cpointer)
    srotm_t *srotm = <srotm_t*>f2py_ptr(blas.srotm._cpointer)
    srotmg_t *srotmg = <srotmg_t*>f2py_ptr(blas.srotmg._cpointer)
    sscal_t *sscal = <sscal_t*>f2py_ptr(blas.sscal._cpointer)
    sswap_t *sswap = <sswap_t*>f2py_ptr(blas.sswap._cpointer)
    ssymm_t *ssymm = <ssymm_t*>f2py_ptr(blas.ssymm._cpointer)
    ssymv_t *ssymv = <ssymv_t*>f2py_ptr(blas.ssymv._cpointer)
    ssyr_t *ssyr = <ssyr_t*>f2py_ptr(blas.ssyr._cpointer)
    ssyr2_t *ssyr2 = <ssyr2_t*>f2py_ptr(blas.ssyr2._cpointer)
    ssyr2k_t *ssyr2k = <ssyr2k_t*>f2py_ptr(blas.ssyr2k._cpointer)
    ssyrk_t *ssyrk = <ssyrk_t*>f2py_ptr(blas.ssyrk._cpointer)
    strmm_t *strmm = <strmm_t*>f2py_ptr(blas.strmm._cpointer)
    strmv_t *strmv = <strmv_t*>f2py_ptr(blas.strmv._cpointer)
    zaxpy_t *zaxpy = <zaxpy_t*>f2py_ptr(blas.zaxpy._cpointer)
    zcopy_t *zcopy = <zcopy_t*>f2py_ptr(blas.zcopy._cpointer)
    zdotc_t *zdotc = <zdotc_t*>f2py_ptr(blas.wzdotc._cpointer)
    zdotu_t *zdotu = <zdotu_t*>f2py_ptr(blas.wzdotu._cpointer)
    zdrot_t *zdrot = <zdrot_t*>f2py_ptr(blas.zdrot._cpointer)
    zdscal_t *zdscal = <zdscal_t*>f2py_ptr(blas.zdscal._cpointer)
    zgemm_t *zgemm = <zgemm_t*>f2py_ptr(blas.zgemm._cpointer)
    zgemv_t *zgemv = <zgemv_t*>f2py_ptr(blas.zgemv._cpointer)
    zgerc_t *zgerc = <zgerc_t*>f2py_ptr(blas.zgerc._cpointer)
    zgeru_t *zgeru = <zgeru_t*>f2py_ptr(blas.zgeru._cpointer)
    zhemm_t *zhemm = <zhemm_t*>f2py_ptr(blas.zhemm._cpointer)
    zhemv_t *zhemv = <zhemv_t*>f2py_ptr(blas.zhemv._cpointer)
    zher_t *zher = <zher_t*>f2py_ptr(blas.zher._cpointer)
    zher2_t *zher2 = <zher2_t*>f2py_ptr(blas.zher2._cpointer)
    zher2k_t *zher2k = <zher2k_t*>f2py_ptr(blas.zher2k._cpointer)
    zherk_t *zherk = <zherk_t*>f2py_ptr(blas.zherk._cpointer)
    zrotg_t *zrotg = <zrotg_t*>f2py_ptr(blas.zrotg._cpointer)
    zscal_t *zscal = <zscal_t*>f2py_ptr(blas.zscal._cpointer)
    zswap_t *zswap = <zswap_t*>f2py_ptr(blas.zswap._cpointer)
    zsymm_t *zsymm = <zsymm_t*>f2py_ptr(blas.zsymm._cpointer)
    zsyr_t *zsyr = <zsyr_t*>f2py_ptr(blas.zsyr._cpointer)
    zsyr2k_t *zsyr2k = <zsyr2k_t*>f2py_ptr(blas.zsyr2k._cpointer)
    zsyrk_t *zsyrk = <zsyrk_t*>f2py_ptr(blas.zsyrk._cpointer)
    ztrmm_t *ztrmm = <ztrmm_t*>f2py_ptr(blas.ztrmm._cpointer)
    ztrmv_t *ztrmv = <ztrmv_t*>f2py_ptr(blas.ztrmv._cpointer)
