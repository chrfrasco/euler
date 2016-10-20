sumOfSquares :: [Integer] -> Integer
sumOfSquares = sum . (map (^2))

squareOfSum :: [Integer] -> Integer
squareOfSum = (^2) . sum

diff :: Integer -> Integer
diff n = (sumOfSquares [1..n]) - (squareOfSum [1..n])

main = print $ (abs . diff) 100
