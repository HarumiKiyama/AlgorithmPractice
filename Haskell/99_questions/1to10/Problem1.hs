module Problem_1 where

-- Find the last element of a list.

myLast :: [a] -> a
myLast [] = error "No empty list"
myLast [x] = x
myLast (x:xs) = myLast xs

myLast' :: [a]->a
myLast' = head . reverse
