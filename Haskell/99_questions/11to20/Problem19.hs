module Problem18 where

-- Rotate a list N places to the left.

rotate :: [a] -> Int -> [a]
rotate xs n
  | n < 0 =
    let position = length xs + n
    in drop position xs ++ take position xs
  | n > 0 = drop n xs ++ take n xs
