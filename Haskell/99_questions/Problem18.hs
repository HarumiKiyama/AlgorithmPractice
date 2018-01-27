module Problem18 where

-- Extract a slice from a list.
slice :: [a] -> Int -> Int -> [a]
slice _ f l
  | f < 1 || l < 1 = error "undefined"
slice [] _ _ = []
slice xs 1 l = take l xs
slice xs f 1 = take f xs
slice (_:xs) f l = slice xs (f - 1) (l - 1)
