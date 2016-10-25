module P4 where

isPalindrome :: Show a => a -> Bool
isPalindrome s = (show s) == (reverse $ show s) 

maxInList :: [Integer] -> Integer
maxInList = foldl max 0

main = print $ maxInList $ filter isPalindrome [x*y | x <- [999, 998..100], y <- [999, 998..100]]
