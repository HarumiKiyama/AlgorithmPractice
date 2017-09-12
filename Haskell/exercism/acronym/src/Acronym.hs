module Acronym (abbreviate) where
import           Data.Char (isUpper, toUpper)

abbreviate :: String -> String
abbreviate xs = toUpper . head <$> ws
  where
    ws = words xs >>= splitCamel >>= splitHyphenated
    splitCamel :: String -> [String]
    splitCamel [] = []
    splitCamel all@(x:xs) =
      case span (not . isUpper) all of
        ("", s) ->
          case splitCamel xs of
            []     -> [[x]]
            (r:rs) -> (x : r) : rs
        (f, "") -> [f]
        (f, s) -> [f] ++ splitCamel s
    splitHyphenated :: String -> [String]
    splitHyphenated xs =
      case span (\x -> x /= '-') xs of
        (f, "") -> [f]
        (f, s)  -> [f, tail s]
