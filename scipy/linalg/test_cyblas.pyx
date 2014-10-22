from scipy.linalg cimport cyblas
import numpy as np
from numpy.testing import TestCase, assert_array_almost_equal, assert_almost_equal

class test_dgemm_pointer(TestCase):

    def test_basic(self):

        cdef:
            double[:,:] a, b, c
            double alpha, beta
            int lda, ldb, ldc, m, n, k

        alpha, beta = 1., 0.
        lda = ldb = ldc = m = n = k = 2
        a = np.array([[1, 2], [3, 4]], float, order="F")
        b = np.array([[5, 6], [7, 8]], float, order="F")
        c = np.empty((2, 2), float, order="F")

        cyblas._dgemm("N", "N", &m, &n, &k, &alpha, &a[0,0], &lda, &b[0,0], &ldb, &beta, &c[0,0], &ldc)

        assert_array_almost_equal(c, np.dot(a, b))

class test_sdot_pointer(TestCase):

    def test_sdot(self):
        cdef:
            float[:] x, y
            float out
            int n, incx, incy

        x = np.array([.5, 1, 2], np.float32)
        y = np.array([2, 1, .5], np.float32)
        n = 3
        incx = incy = 1

        out = cyblas._sdot(&n, &x[0], &incx, &y[0], &incy)

        assert_almost_equal(out, np.inner(x, y))
