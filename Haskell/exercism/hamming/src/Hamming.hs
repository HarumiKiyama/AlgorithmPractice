module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys =
  case length xs - length ys of
    0         -> Just $ sum $ diff <$> zip xs ys
    otherwise -> Nothing
  where
    diff :: (Char, Char) -> Int
    diff (x, y) =
      case x == y of
        True  -> 0
        False -> 1
