from operator import itemgetter

def arg_names_and_types(args):
    return zip(*[arg.split(' *') for arg in args.split(', ')])

pyx_func_template = """ctypedef void _w{name}_t({ret_type} *out, {args}) nogil
cdef extern _w{name}_t _fortran_{name} "F_FUNC({name}wrapper, {upname}WRAPPER)"
cdef {ret_type} _wrap_{name}({args}) nogil:
    cdef {ret_type} out
    _fortran_{name}(&out, {argnames})
    return out
cdef {name}_t *{name}_f = &_wrap_{name}
"""

def pyx_decl_func(name, ret_type, args):
    argnames = ', '.join(arg_names_and_types(args)[1])
    return pyx_func_template.format(name=name, upname=name.upper(),
                                    ret_type=ret_type, args=args,
                                    argnames=argnames)

pyx_sub_template = """cdef extern {name}_t _fortran_{name} "F_FUNC({name},{upname})"
cdef {name}_t *{name}_f = &_fortran_{name}
"""

def pyx_decl_sub(name):
    return pyx_sub_template.format(name=name, upname=name.upper())

pxd_template = """ctypedef {ret_type} {name}_t({args}) nogil
cdef {name}_t *{name}_f
"""

def pxd_decl(name, ret_type, args):
    return pxd_template.format(name=name, ret_type=ret_type, args=args)

fortran_types = {'int':'integer',
                 'c':'complex',
                 'd':'double precision',
                 's':'real',
                 'z':'complex*16',
                 'char':'character'}

fortran_template = """      subroutine {name}wrapper(ret, {argnames})
        external {wrapper}
        {ret_type} {wrapper}
        {ret_type} ret
        {argdecls}
        ret = {wrapper}({argnames})
      end
"""

def process_fortran_name(name):
    if 'inc' in name:
        return name
    if 'x' in name or 'y' in name:
        return name + '(n)'
    return name

def fort_subroutine_wrapper(name, ret_type, args):
    if name[0] in ['c', 's', 'z']:
        wrapper = 'w' + name
    else:
        wrapper = name
    types, names = arg_names_and_types(args)
    argnames = ', '.join(names)
    
    names = [process_fortran_name(n) for n in names]
    argdecls = '\n        '.join(['{} {}'.format(fortran_types[t], n)
                                  for n, t in zip(names, types)])
    return fortran_template.format(name=name, wrapper=wrapper,
                                   argnames=argnames, argdecls=argdecls,
                                   ret_type=fortran_types[ret_type])

c_types = {'int':'int',
           'c':'__scipy_blas_float_complex',
           'd':'double',
           's':'float',
           'z':'__scipy_blas_double_complex',
           'char':'char'}

blas_pxd_preamble = """ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

"""

def generate_blas_pxd(all_sigs):
    body = '\n'.join([pxd_decl(*sig) for sig in all_sigs])
    return blas_pxd_preamble + body

lapack_pxd_preamble = """ctypedef float s
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

"""

def generate_lapack_pxd(all_sigs):
    return lapack_pxd_preamble + '\n'.join([pxd_decl(*sig) for sig in all_sigs])

blas_pyx_preamble = '''# cython: boundscheck = False
# cython: wraparound = False
# cython: cdivision = True

"""
BLAS Functions for Cython
=========================

Usable from Cython via::

    cimport scipy.linalg.cython_blas

Raw function pointers (Fortran-style pointer arguments):

- {}


"""

cdef extern from "fortran_defs.h":
    pass

'''

def make_blas_pyx_preamble(all_sigs):
    names = [sig[0] for sig in all_sigs]
    return blas_pyx_preamble.format("\n- ".join(names))

lapack_pyx_preamble = '''"""LAPACK functions for Cython
===========================

Usable from Cython via::

    cimport scipy.linalg.cython_lapack

Raw function pointers (Fortran-style pointer arguments):

- {}


"""

cdef extern from "fortran_defs.h":
    pass

'''

def make_lapack_pyx_preamble(all_sigs):
    names = [sig[0] for sig in all_sigs]
    return lapack_pyx_preamble.format("\n- ".join(names))

blas_py_wrappers = """

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
"""

def generate_fortran(func_sigs):
    return "\n".join([fort_subroutine_wrapper(*sig) for sig in func_sigs])

def generate_blas_pyx(func_sigs, sub_sigs, all_sigs):
    funcs = "\n".join([pyx_decl_func(*sig) for sig in func_sigs])
    subs = "\n" + "\n".join([pyx_decl_sub(sig[0]) for sig in sub_sigs])
    return make_blas_pyx_preamble(all_sigs) + funcs + subs + blas_py_wrappers

lapack_py_wrappers = """

# Python accessible wrappers for testing:

def _test_dlamch(cmach):
    # This conversion is necessary to handle Python 3 strings.
    cmach_bytes = bytes(cmach)
    # Now that it is a bytes representation, a non-temporary variable
    # must be passed as a part of the function call.
    cdef char* cmach_char = cmach_bytes
    return dlamch_f(cmach_char)

def _test_slamch(cmach):
    # This conversion is necessary to handle Python 3 strings.
    cmach_bytes = bytes(cmach)
    # Now that it is a bytes representation, a non-temporary variable
    # must be passed as a part of the function call.
    cdef char* cmach_char = cmach_bytes
    return slamch_f(cmach_char)
"""

def generate_lapack_pyx(func_sigs, sub_sigs, all_sigs):
    funcs = "\n".join([pyx_decl_func(*sig) for sig in func_sigs])
    subs = "\n" + "\n".join([pyx_decl_sub(sig[0]) for sig in sub_sigs])
    preamble = make_lapack_pyx_preamble(all_sigs)
    return preamble + funcs + subs + lapack_py_wrappers

def split_signature(sig):
    name_and_type, args = sig[:-1].split('(')
    ret_type, name = name_and_type.split(' ')
    return name, ret_type, args

def filter_lines(lines):
    lines = [line.strip() for line in lines if line != '\n']
    i = lines.index("# Wrapped Subroutines:")
    func_sigs = [split_signature(l) for l in lines[:i] if l[0]!='#']
    sub_sigs = [split_signature(l) for l in lines[i+1:] if '#' not in l]
    all_sigs = list(sorted(func_sigs + sub_sigs, key=itemgetter(0)))
    return func_sigs, sub_sigs, all_sigs

def make_all(blas_signature_file="cython_blas_signatures.txt",
             lapack_signature_file="cython_lapack_signatures.txt",
             blas_name="cython_blas",
             lapack_name="cython_lapack",
             blas_fortran_name="_blas_subroutine_wrappers.f",
             lapack_fortran_name="_lapack_subroutine_wrappers.f"):
    with open(blas_signature_file, 'r') as f:
        blas_sigs = f.readlines()
    blas_sigs = filter_lines(blas_sigs)
    blas_pyx = generate_blas_pyx(*blas_sigs)
    with open(blas_name + '.pyx', 'w') as f:
        f.write(blas_pyx)
    blas_pxd = generate_blas_pxd(blas_sigs[2])
    with open(blas_name + '.pxd', 'w') as f:
        f.write(blas_pxd)
    blas_fortran = generate_fortran(blas_sigs[0])
    with open(blas_fortran_name, 'w') as f:
        f.write(blas_fortran)
    with open(lapack_signature_file, 'r') as f:
        lapack_sigs = f.readlines()
    lapack_sigs = filter_lines(lapack_sigs)
    lapack_pyx = generate_lapack_pyx(*lapack_sigs)
    with open(lapack_name + '.pyx', 'w') as f:
        f.write(lapack_pyx)
    lapack_pxd = generate_lapack_pxd(lapack_sigs[2])
    with open(lapack_name + '.pxd', 'w') as f:
        f.write(lapack_pxd)
    lapack_fortran = generate_fortran(lapack_sigs[0])
    with open(lapack_fortran_name, 'w') as f:
        f.write(lapack_fortran)

if __name__ == '__main__':
    make_all()
