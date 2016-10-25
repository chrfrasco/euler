module Main where

import Data.List (find)

divisibleBy :: Integral a => a -> a -> Bool
divisibleBy num den = (num `mod` den) == 0

divisibleByEach :: Integral a => [a] -> a -> Bool
divisibleByEach ns x = all (divisibleBy x) ns

main :: IO ()
main = print $ find (divisibleByEach [1..20]) [20, 40..]
