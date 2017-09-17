module ETL (transform) where
import           Data.Map (Map, union, empty,foldrWithKey,fromList)
import           Data.Char (toLower)


transform :: Map Int String -> Map Char Int
transform legacyData = foldrWithKey trans empty legacyData
  where
    trans :: Int -> String -> Map Char Int -> Map Char Int
    trans k s res = union res $ fromList [(toLower i, k) | i <- s]
