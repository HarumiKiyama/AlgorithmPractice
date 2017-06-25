module Problem2 where

-- Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [x, _] = x
myButLast (_:xs) = myButLast xs
