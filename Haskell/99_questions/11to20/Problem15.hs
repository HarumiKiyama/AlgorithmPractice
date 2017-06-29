module Problem15 where

-- Replicate the elements of a list a given number of times.
repli :: [a] -> Int -> [a]
repli xs n = xs >>= (\x -> replicate n x)
