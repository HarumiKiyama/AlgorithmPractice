module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n =
  if n <= 0
    then Nothing
    else Just $ collatz' n
  where
    collatz' :: Integer -> Integer
    collatz' n
      | n == 1 = 0
      | n `mod` 2 == 0 = 1 + collatz' (n `div` 2)
      | otherwise = 1 + collatz' (3 * n + 1)
