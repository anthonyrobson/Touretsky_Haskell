-- Touretsky Common Lisp
-- Chapter 1

sub2 :: Num a => a -> a
sub2 n = n - 2

twop :: (Num a, Eq a) => a -> Bool
twop n = sub2 n == 0

half1 :: Fractional a => a -> a
half1 n = n / 2

half2 :: Fractional a => a -> a
half2 n = n * 0.5

multiDigitP :: (Ord a, Num a) => a -> Bool
multiDigitP n = n > 9

add2 :: Num a => a -> a
add2 n = n + 2

twoMoreP :: (Eq a, Num a) => a -> a -> Bool
twoMoreP x y = x == add2 y

average :: Fractional a => a -> a -> a
average x y = (x + y) / 2

moreThanHalfP :: (Ord a, Fractional a) => a -> a -> Bool
moreThanHalfP x y = x > (y / 2)

notOneP :: (Eq a, Num a) => a -> Bool
notOneP n = n /= 1

notPlusP :: (Ord a, Num a) => a -> Bool
notPlusP n = not (n > 0)

myEvenP :: Integral a => a -> Bool
myEvenP n = not (odd n)
