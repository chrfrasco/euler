module P2 where

fibs :: [Integer]
fibs = 0:1:[i + j | (i, j) <- zip fibs (tail fibs)]

main :: IO ()
main = print $ sum $ filter even $ takeWhile (<4000000) fibs
