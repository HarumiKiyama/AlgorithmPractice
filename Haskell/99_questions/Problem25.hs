module Problem25 where
import           Problem24
import           System.Random

-- Generate a random permutation of the elements of a list.
rndPermu :: [a] -> StdGen->[a]
rndPermu xs gen = map (\x -> xs !! x) $ rndSelect (length xs) (length xs) gen
