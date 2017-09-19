module Phone (number) where
import           Data.Char (isDigit)


number :: String -> Maybe String
number xs
  | length number == 11 && head number == '1' = getPhoneNumber $ tail number
  | length number == 10 = getPhoneNumber number
  | otherwise = Nothing
  where
    number = filter isDigit xs
    two2nine = ['2' .. '9']
    getPhoneNumber :: String -> Maybe String
    getPhoneNumber n =
      if head n `elem` two2nine && n !! 3 `elem` two2nine
        then Just n
        else Nothing
