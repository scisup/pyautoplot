import unittest
from numpy import array, NaN
from pyautoplot.utilities import *

class UtilitiesTest(unittest.TestCase):
    def test_is_list(self):
        self.assertFalse(is_list(array([])))
        self.assertFalse(is_list(10))
        self.assertTrue(is_list([]))
        self.assertTrue(is_list([10, 'boe']))
        pass

    def test_is_masked_array(self):
        self.assertFalse(is_masked_array(array([])))
        self.assertFalse(is_masked_array(10))
        self.assertFalse(is_masked_array([]))
        self.assertTrue(is_masked_array(ma.array([10, 'boe'])))
        pass

    def test_set_nan_zero(self):
        a = array([0,1,2,NaN,4, 5, NaN+NaN*1j])
        r = set_nan_zero(a)
        self.assertEquals(a[0], 0)
        self.assertEquals(a[1], 1)
        self.assertEquals(a[2], 2)
        self.assertEquals(a[3], 0)
        self.assertEquals(a[4], 4)
        self.assertEquals(a[5], 5)
        self.assertEquals(a[6], 0)

        self.assertEquals(r[0], 0)
        self.assertEquals(r[1], 1)
        self.assertEquals(r[2], 2)
        self.assertEquals(r[3], 0)
        self.assertEquals(r[4], 4)
        self.assertEquals(r[5], 5)
        self.assertEquals(r[6], 0)
        pass
    
    pass


#
#  M A I N 
#

if __name__ == '__main__':
    unittest.main()

#
#  E O F
#