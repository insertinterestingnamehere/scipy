from scipy.linalg cimport cylapack
from scipy.linalg import lapack
import numpy as np
from numpy.testing import (TestCase, assert_array_almost_equal,
                           assert_allclose)

class test_lamch(TestCase):
    
    def test_slamch(self):
        for c in 'esbpnrmulo':
            assert_allclose(cylapack._slamch(c), lapack.slamch(c))
    
    def test_dlamch(self):
        for c in 'esbpnrmulo':
            assert_allclose(cylapack._slamch(c), lapack.slamch(c))
