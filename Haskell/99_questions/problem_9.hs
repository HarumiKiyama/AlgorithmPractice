module Problem9 where


pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) =
  let (first, rest) = span (== x) xs
  in (x : first) : pack rest
