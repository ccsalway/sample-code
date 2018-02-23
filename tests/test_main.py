import unittest

from app import main


class TestMain(unittest.TestCase):

    def test_main(self):
        self.assertEqual(main.main(), "Hello, World!")

    def test_fail(self):
        self.assertFalse(True)


if __name__ == '__main__':
    unittest.main()
