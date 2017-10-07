module Diamond (diamond) where
import           Data.Char (chr, ord)

diamond :: Char -> [String]
diamond c = map diamondLine $ [0 .. num] ++ reverse [0 .. num - 1]
  where
    num :: Int
    num = ord c - 65
    char :: Int -> Char
    char n = chr $ n + 65
    charDiamond n
      | n == 0 = [char n]
      | otherwise = [char n] ++ replicate (n * 2 - 1) ' ' ++ [char n]
    diamondLine :: Int -> String
    diamondLine l =
      replicate (num - l) ' ' ++ charDiamond l ++ replicate (num - l) ' '
