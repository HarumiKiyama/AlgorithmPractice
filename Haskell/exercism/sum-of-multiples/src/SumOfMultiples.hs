module SumOfMultiples (sumOfMultiples) where
import           Data.List (nub)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ nub multiples
  where
    multiples =
      [ y
      | x <- factors
      , y <- [x * i | i <- [1 .. limit `div` x], x * i < limit]
      ]
