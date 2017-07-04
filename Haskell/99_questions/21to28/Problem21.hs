module Problem21 where

-- nsert an element at a given position into a list.
insertAt :: a -> [a] -> Int -> [a]
insertAt y xs 1     = y : xs
insertAt y (x:xs) n = x : insertAt y xs (n - 1)
