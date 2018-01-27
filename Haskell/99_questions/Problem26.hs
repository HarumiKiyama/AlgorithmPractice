module Problem26 where

-- Generate the combinations of K distinct objects chosen from the N elements of a list

combinations :: Int -> [a] -> [[a]]
combinations _ [] = []
combinations 1 xs = map (\x->[x]) xs
combinations k (x:xs) =
  (map (\n -> x : n) $ combinations (k - 1) xs) ++ combinations k xs
