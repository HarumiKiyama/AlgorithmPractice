module Pangram (isPangram) where
import           Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = all isInText ['a' .. 'z']
  where
    nt = map toLower text
    isInText a = elem a nt
