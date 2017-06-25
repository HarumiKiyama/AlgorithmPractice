module Problem3 where

-- Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt (x:_) 1  = x
elementAt [] _     = error "Index out of bounds"
elementAt (_:xs) k
  | k < 1 = error "Index out of bounds"
  | otherwise = elementAt xs (k - 1)
