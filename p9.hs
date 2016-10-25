import Data.List (find)

uncurry3 :: (a -> b -> c -> d) -> (a, b, c) -> d
uncurry3 f (a, b, c) = f a b c

isTriplet :: Int -> Int -> Int -> Bool
isTriplet a b c = (a^2) + (b^2) == (c^2)

triples :: [(Int, Int, Int)]
triples = filter g $ concatMap f [1..1000]
  where
    g (a, b, c) = all (>=0) [a, b, c]
    f n = zip3 (repeat n) [1..1000] [m, (m-1)..]
      where m = 1000 - n - 1

main :: IO ()
main = print $ find (uncurry3 isTriplet) triples
