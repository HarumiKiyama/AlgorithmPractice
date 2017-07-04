module Problem22 where

-- Create a list containing all integers within a given range.

range :: Int -> Int -> [Int]
range f l
  | f == l = [l]
  | f > l = range l f
  | otherwise = f : range (f + 1) l
