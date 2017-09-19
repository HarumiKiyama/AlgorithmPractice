module Phone (number) where
import           Data.Char (isDigit)


number :: String -> Maybe String
number [] = Nothing
number xs =
  case length n == 11 && head n == '1' of
    True -> getPhoneNumber $ tail n
    False
      | length n == 10 -> getPhoneNumber n
      | otherwise -> Nothing
  where
    n = filter isDigit xs
    check :: (Char, Int) -> Maybe Char
    check (c, n) =
      case n `elem` [0, 3] of
        True
          | c `elem` (show [2 .. 9]) -> Just c
          | otherwise -> Nothing
        otherwise -> Just c
    getPhoneNumber :: String -> Maybe String
    getPhoneNumber n = check `mapM` zip n [0 ..]
