module Problem20 where

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs
  | n > 0 = (xs !! (n - 1), take (n - 1) xs ++ drop n xs)
