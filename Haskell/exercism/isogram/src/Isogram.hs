module Isogram (isIsogram) where
import           Data.Char (toLower,isAlpha)

isIsogram :: String -> Bool
isIsogram xs = isIsogram' $ map toLower $ filter isAlpha xs
isIsogram' :: String -> Bool
isIsogram' [] = True
isIsogram' (x:xs) =
  if x `elem` xs
    then False
    else isIsogram xs
