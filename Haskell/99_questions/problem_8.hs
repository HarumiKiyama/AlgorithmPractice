module Problem8 where

-- Eliminate consecutive duplicates of list elements.
compress :: (Eq a) => [a] -> [a]
compress =
  foldr
    (\x res ->
       if elem x res
         then res
         else x : res)
    []
