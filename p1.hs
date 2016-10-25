module P1 where

main :: IO ()
main = print $ sum $ filter divBy3or5 [1..999]
  where divBy3or5 n = or [(n `mod` 3) == 0, (n `mod` 5) == 0]
