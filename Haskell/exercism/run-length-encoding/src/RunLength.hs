module RunLength (decode, encode) where
import           Data.Char (isDigit)
import           Data.List (group, span)

decode :: String -> String
decode [] = []
decode all@(x:xs)
  | isDigit x =
    let (f, (s:ss)) = span isDigit all
    in replicate (read f) s ++ decode ss
  | otherwise = x : decode xs

encode :: String -> String
encode text = (group text) >>= encode'
  where
    encode' :: String -> String
    encode' x = (getNum x) ++ [head x]
    getNum :: String -> String
    getNum n =
      case length n of
        1 -> ""
        otherwise -> show $ length n
