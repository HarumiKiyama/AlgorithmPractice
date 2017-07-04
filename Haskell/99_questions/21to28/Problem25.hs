module Problem25 where
import Problem23

  -- TODO: fix repeat problems
-- Generate a random permutation of the elements of a list.
rndPermu :: [a] -> IO [a]
rndPermu xs = Problem23.rndSelect xs $ length xs
