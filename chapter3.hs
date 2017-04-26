-- Touretsky Common Lisp
-- Chapter 3

half :: Fractional a => a -> a
half n = n / 2

cube :: Num a => a -> a
cube n = n ^ 3

oneMoreP :: (Eq a, Num a) => a -> a -> Bool
oneMoreP x y = x == (y + 1)

pythag :: Floating a => a -> a -> a
pythag x y = sqrt $ x ^ 2 + y ^ 2

mpg :: Fractional a => a -> a -> a -> a
mpg ior for gc = (for - ior) / gc

longerThan :: [a] -> [a] -> Bool
longerThan xs ys = (length xs) > (length ys)

addLength :: [String] -> [String]
addLength xs = show (length xs) : xs

-- cannot make 'myfun' as lists in Haskell must be homogeneous

firstP :: Eq a => a -> [a] -> Bool
firstP y (x:_) = x == y

midAdd1 :: String -> String
midAdd1 str = str1 ++ " " ++ addedStr2 ++ " " ++ str3
  where str1 = (words str) !! 0
        str3 = (words str) !! 2
        str2 = (words str) !! 1
        addedStr2 = show $ 1 + (read str2 :: Int)

fToC :: Fractional a => a -> a
fToC f = (f - 32) * 5 / 9
