module Problem17 where

-- split a list into two parts
split :: [a] -> Int -> [[a]]
split xs n = [firstPart xs n, secondPart xs n]
  where
    firstPart :: [a] -> Int -> [a]
    firstPart [] _       = []
    firstPart _ 0        = []
    firstPart (y:ys) num = y : firstPart ys (num - 1)
    secondPart :: [a] -> Int -> [a]
    secondPart ys 0       = ys
    secondPart [] _       = []
    secondPart (_:ys) num = secondPart ys (num - 1)
