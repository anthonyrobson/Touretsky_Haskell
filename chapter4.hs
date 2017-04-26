-- Touretsky Common Lisp
-- Chapter 4

makeEven :: Integral a => a -> a
makeEven n
  | odd n     = n + 1
  | otherwise = n

further :: Integral a => a -> a
further n
  | n > 0     = n + 1
  | n < 0     = n - 1
  | otherwise = n

ordered :: Ord a => a -> a -> [a]
ordered x y
  | x < y     = [x,y]
  | otherwise = [y,x]

myAbs :: (Ord a, Num a) => a -> a
myAbs n
  | n > 0     = n
  | n < 0     = 1 - n
  | otherwise = 0

emphasize3 :: String -> String
emphasize3 str
  | head xs == "good" = "great " ++ rest
  | head xs == "bad"  = "awful " ++ rest
  | otherwise         = "very "  ++ str
  where xs   = words str
        rest = unwords $ tail xs

constrain :: Ord a => a -> a -> a -> a
constrain x y z
  | x < y     = y
  | x > z     = z
  | otherwise = x

firstZero :: (Eq a, Num a) => [a] -> String
firstZero xs
  | xs!!0 == 0 = "first"
  | xs!!1 == 0 = "second"
  | xs!!2 == 0 = "third"
  | otherwise  = "none"

myCycle :: (Eq a, Num a) => a -> a
myCycle n
  | n == 99   = 1
  | otherwise = n + 1

howCompute :: (Eq a, Num a) => a -> a -> a -> String
howCompute x y z
  | x + y == z = "Sum"
  | x * y == z = "Product"
  | otherwise  = "Beats me"

geq :: (Eq a, Ord a) => a -> a -> Bool
geq x y = (x == y) || (x > y)

people :: String -> String -> Bool
people x "child"
  | (x == "boy" || x == "girl") = True
  | otherwise                   = False

people x "adult"
  | (x == "man" || x == "woman") = True
  | otherwise                    = False

rps x y
  | x == y = "tie"
rps "rock" "scissors"  = "first wins"
rps "paper" "rock"     = "first wins"
rps "scissors" "paper" = "first wins"
rps _ _                = "second wins"

boilingP :: (Ord a, Num a) => a -> String -> Bool
boilingP temp "fahrenheit"
  | temp > 212 = True
  | otherwise  = False
boilingP temp "celsius"
  | temp > 100 = True
  | otherwise  = False
