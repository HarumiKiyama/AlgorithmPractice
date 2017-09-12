module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA xs = mapM transfer xs
  where
    transfer n =
      case n of
        'C' -> Just 'G'
        'G' -> Just 'C'
        'A' -> Just 'U'
        'T' -> Just 'A'
        otherwise -> Nothing
