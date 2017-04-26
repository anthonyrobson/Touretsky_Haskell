-- Touretsky Common Lisp
-- Chapter 2

myThird1 :: [a] -> a
myThird1 xs = xs !! 2

myThird2 :: [a] -> a
myThird2 xs = head $ tail $ tail xs

twoInputs :: a -> a -> [a]
twoInputs x y = x : y : []

fourInputs :: a -> a -> a -> a -> [[a]]
fourInputs a b c d = [[a,b], [c,d]]

duoCons :: a -> a -> [a] -> [a]
duoCons a b xs = a : b : xs

twoDeeper :: a -> [[a]]
twoDeeper x = [[x]]

unaryZeroP :: String -> Bool
unaryZeroP xs = length xs == 0

unaryGreaterP :: String -> String -> Bool
unaryGreaterP xs ys = (length xs) > (length ys)
