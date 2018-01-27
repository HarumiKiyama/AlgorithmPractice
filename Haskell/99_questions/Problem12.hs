module Problem12 where
import           Problem11
-- Decode a run-length encoded list.
decodeModified
  :: Eq a
  => [Entry a] -> [a]
decodeModified (Multiple n a :xs) = (replicate n a) ++ (decodeModified xs)
decodeModified (Single a :xs) = [a] ++ (decodeModified xs)
decodeModified [] = []
