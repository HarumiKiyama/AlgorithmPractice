module DNA (nucleotideCounts) where
import           Data.Map (Map, fromList, insertWith)

nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts [] = Right $ fromList [('A', 0), ('C', 0), ('G', 0), ('T', 0)]
nucleotideCounts (x:xs) =
  if x `elem` "ACGT"
    then insertWith (+) x 1 <$> nucleotideCounts xs
    else Left "contain none nucleotides char"
