module Problem16 where
import Data.List.Split(chunksOf)

-- Drop every N'th element from a list

dropEvery :: String -> Int -> String
dropEvery s n = concatMap init $ chunksOf n s
