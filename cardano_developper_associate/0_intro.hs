-- usefule ghci command
-- :q : quit
-- :r : reload
-- :t obj_name : return type of obj_name
--

module Lib
    ( someFunc
    ) where 
        
someFunc :: IO ()
someFunc = putStrLn "Here is someFunc2"

x :: Integer
x = 5

y :: Integer
y = 0

z :: Integer
z = x + y

e :: Integer
e = z + x

double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple x = double( double x)

first :: (Integer, Integer) -> Integer
first (a, b) = a

first2 :: Integer -> Integer -> Integer
first2 a b = a

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]

average :: Foldable t => t Int -> Int
average ns = sum ns `div` length ns


sumEvenOdds1 xs = foldr (+) 0 (map (+1)
                        (filter (\x -> x `mod` 2 == 0) xs))
                        
sumEvenOdds :: Integral b => [b] -> b
sumEvenOdds xs = sums(incr(evens xs))
    where
        sums xs = foldr (+) 0 xs
        incr xs = map (+1) xs
        evens xs = filter (\x -> x `mod` 2 == 0) xs