module Bob (responseFor) where
import           Data.Char (isAlpha, isSpace, isUpper)

responseFor :: String -> String
responseFor xs
  | (all isUpper axs) && (not $ null axs) = "Whoa, chill out!"
  | null nxs = "Fine. Be that way!"
  | last nxs == '?' = "Sure."
  | otherwise = "Whatever."
  where
    nxs = filter (not . isSpace) xs
    axs = filter isAlpha nxs
