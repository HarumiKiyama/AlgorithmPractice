module Problem16 where
import Data.List.Split(chunksOf)

-- Drop every N'th element from a list

dropEvery :: [a] -> Int -> [a]
dropEvery s n = concatMap init $ chunksOf n s
