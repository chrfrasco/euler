-- 2520 is the smallest number that can be divided by each of the numbers from
-- 1 to 10 without any remainder. What is the smallest positive number that is
-- evenly divisible by all of the numbers from 1 to 20?

import Data.List (find)

fromMaybe :: Maybe t -> t
fromMaybe (Just a) = a

divisibleBy :: Integral a => a -> a -> Bool
divisibleBy num den = (num `mod` den) == 0

divisibleByEach :: Integral a => [a] -> a -> Bool
divisibleByEach ns x = all (divisibleBy x) ns

main :: IO ()
main = print $ fromMaybe $ find (divisibleByEach [1..20]) [20, 40..]
