
-- filter :: (a -> Bool) -> [a] -> [a]

greaterThan100 :: [Int] -> [Int]
greaterThan100 xs = filter isGt100 xs

   where

   isGt100 x = x > 100

gt100_a :: Int -> Bool
gt100_a x = x > 100

-- let's turn gt100_a to a lambda function
gt100 :: Int -> Bool
gt100 = \x -> x > 100

sum_a :: Int -> Int -> Int
sum_a x y = x + y

-- let's turn sum to a lambda function
-- this takes a parameter x and return a function that take a parameter y and return x + y
sum_b :: Int -> (Int -> Int)
sum_b = \x -> (\y -> x + y)

sum3 :: Int -> Int -> Int -> Int
sum3 x y z = x + y + z

sum3_b :: Int -> (Int -> (Int -> (Int)))
sum3_b = \x -> (\y -> (\z -> (x + y + z))) -- note the brackets in the prototype and the body function could be omitted

