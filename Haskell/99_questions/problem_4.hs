module Problem4 where

-- Find the number of elements of a list.

myLength :: [a] -> Int
myLength [] = 0
mylength (_:xs) = 1 + mylength xs

myLength' :: [a] -> Int
myLength' = foldr (\_ res -> res + 1) 0
