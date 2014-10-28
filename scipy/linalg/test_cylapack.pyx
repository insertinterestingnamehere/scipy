from scipy.linalg cimport cylapack
import numpy as np
from numpy.testing import (TestCase, assert_array_almost_equal,
                           assert_almost_equal)

class test_lamch(TestCase):
    
    def test_slamch(self):
        assert_almost_equal(cylapack._slamch('e'), 5.96046447754e-08)
        assert_almost_equal(cylapack._slamch('s'), 1.17549435082e-38)
        assert_almost_equal(cylapack._slamch('b'), 2.)
        assert_almost_equal(cylapack._slamch('p'), 1.19209289551e-07)
        assert_almost_equal(cylapack._slamch('n'), 24.)
        assert_almost_equal(cylapack._slamch('r'), 1.)
        assert_almost_equal(cylapack._slamch('m'), -125.)
        assert_almost_equal(cylapack._slamch('u'), 1.17549435082e-38)
        assert_almost_equal(cylapack._slamch('l'), 128.)
        assert_almost_equal(cylapack._slamch('o'), 3.4028234663852886e+38)
    
    def test_dlamch(self):
        assert_almost_equal(cylapack._dlamch('e'), 1.11022302463e-16)
        assert_almost_equal(cylapack._dlamch('s'), 2.22507385851e-308)
        assert_almost_equal(cylapack._dlamch('b'), 2.)
        assert_almost_equal(cylapack._dlamch('p'), 2.22044604925e-16)
        assert_almost_equal(cylapack._dlamch('n'), 53.)
        assert_almost_equal(cylapack._dlamch('r'), 1.)
        assert_almost_equal(cylapack._dlamch('m'), -1021.0)
        assert_almost_equal(cylapack._dlamch('u'), 2.22507385851e-308)
        assert_almost_equal(cylapack._dlamch('l'), 1024.0)
        assert_almost_equal(cylapack._dlamch('o'), 1.7976931348623157e+308)
