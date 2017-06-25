module Main where
import Data.List (intercalate)

sequenceSum :: Int -> String
sequenceSum 0 = "0 = 0"
sequenceSum n =
  case n > 0 of
    True -> showNum n ++ " = " ++ (show $ sumNum n)
    False -> show n ++ " < 0"
  where
    showNum :: Int -> String
    showNum n = foldl (\x y -> x ++ "+" ++ (show y)) "0" [1 .. n]
    sumNum :: Int -> Int
    sumNum n = (1 + n) * n `quot` 2

sequenceSumClever :: Int -> String
sequenceSumClever n
  | n < 0 = show n ++ " < 0"
  | n == 0 = "0 = 0"
  | otherwise =
    let ns = [0 .. n]
    in (intercalate "+" (map show ns)) ++ show (sum ns)
main = do
  putStrLn $ sequenceSum 9256
