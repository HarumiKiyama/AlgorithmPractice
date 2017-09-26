module Scrabble (scoreLetter, scoreWord) where
import           Data.Char (toUpper)

scoreLetter :: Char -> Integer
scoreLetter letter
  | c `elem` ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] = 1
  | c `elem` ['D', 'G'] = 2
  | c `elem` ['B', 'C', 'M', 'P'] = 3
  | c `elem` ['F', 'H', 'V', 'W', 'Y'] = 4
  | c `elem` ['K'] = 5
  | c `elem` ['J', 'X'] = 8
  | c `elem` ['Q', 'Z'] = 10
  | otherwise = 0
  where
    c = toUpper letter

scoreWord :: String -> Integer
scoreWord = sum . map scoreLetter
