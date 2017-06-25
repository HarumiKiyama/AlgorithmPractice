module Problem5 where

-- Reverse a list.
myReverse :: [a]->[a]
myReverse = foldl (\res x -> x : res) []
