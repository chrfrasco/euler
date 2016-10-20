primes = 2 : filter ((==1) . length . primeFactors) [3, 5..]

primeFactors n = factor n primes
  where
    factor n (p:ps)
      | p*p > n = [n]
      | n `mod` p == 0 = factor (n `div` p) (p:ps)
      | otherwise = factor n ps

largestPrimeFactor n = last $ primeFactors n

main :: IO ()
main = do
    let num = 600851475143
    print $ largestPrimeFactor num
