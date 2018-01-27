module Problem11
  ( Entry(..)
  , encodeModified
  ) where
import           Data.List (group)
-- Modified run-length encoding.

data Entry a
  = Multiple Int
             a
  | Single a
  deriving (Show)

encodeModified
  :: (Eq a)
  => [a] -> [Entry a]
encodeModified =
  map
    (\x ->
       if length x == 1
         then Single $ head x
         else Multiple (length x) (head x)) .
  group
