module Problem17 where

-- split a list into two parts
split :: [a] -> Int -> ([a], [a])
split xs n = (firstPart xs n, secondPart xs n)
  where
    firstPart :: [a] -> Int -> [a]
    firstPart [] _ = []
    firstPart _ 0 = []
    firstPart (y:ys) num = y : firstPart ys (num - 1)
    secondPart :: [a] -> Int -> [a]
    secondPart ys 0 = ys
    secondPart [] _ = []
    secondPart (_:ys) num = secondPart ys (num - 1)

split' :: [a] -> Int -> ([a], [a])
split' (x:xs) n
  | n > 0 =
    let (f, l) = split' xs (n - 1)
    in (x : f, l)
split' xs _ = ([], xs)
