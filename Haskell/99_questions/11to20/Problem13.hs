module Problem13 where
import Problem11

-- Run-length encoding of a list (direct solution).
encodeDirect
  :: (Eq a)
  => [a] -> [Entry a]
encodeDirect [] = []
encodeDirect (x:xs)
    | count==1  = (Single x) : (encodeDirect xs)
    | otherwise = (Multiple count x) : (encodeDirect rest)
    where
        (matched, rest) = span (==x) xs
        count = 1 + (length matched)
