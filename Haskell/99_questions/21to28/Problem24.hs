module Problem24 where
import           Data.List
import           System.Random
-- Draw N different random numbers from the set 1..M.

rndSelect :: Int -> Int -> StdGen -> [Int]
rndSelect n m = take n . nub . randomRs (1, m)
