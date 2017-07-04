module Problem24 where
import           Problem23
-- Draw N different random numbers from the set 1..M.

  -- TODO: fix repeat problems
rndSelect :: Int -> Int -> IO [Int]
rndSelect n m = Problem23.rndSelect [1 .. m] n
