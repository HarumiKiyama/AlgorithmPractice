module Garden
  ( Plant(..)
  , defaultGarden
  , garden
  , lookupPlants
  ) where

import           Data.List (sortBy)
import           Data.Map  (Map, empty, findWithDefault, insert)

data Plant
  = Clover
  | Grass
  | Radishes
  | Violets
  deriving (Eq, Show)
students =
  [ "Alice"
  , "Bob"
  , "Charlie"
  , "David"
  , "Eve"
  , "Fred"
  , "Ginny"
  , "Harriet"
  , "Ileana"
  , "Joseph"
  , "Kincaid"
  , "Larry"
  ]

splitPlants :: String -> [[Plant]]
splitPlants plants = getPlants <$> combinePlants f s
  where
    (f, (_:s)) = break (== '\n') plants
    combinePlants :: String -> String -> [String]
    combinePlants [] [] = []
    combinePlants (f1:f2:fs) (s1:s2:ss) =
      [f1 : f2 : s1 : s2 : []] ++ combinePlants fs ss
    getPlants :: String -> [Plant]
    getPlants =
      map
        (\x ->
           case x of
             'C' -> Clover
             'V' -> Violets
             'R' -> Radishes
             'G' -> Grass)

defaultGarden :: String -> Map String [Plant]
defaultGarden = garden students

garden :: [String] -> String -> Map String [Plant]
garden students plants =
  foldr (\(k, v) res -> insert k v res) empty $
  zip (sortBy (\(f:_) (s:_) -> compare f s) students) $ splitPlants plants

lookupPlants :: String -> Map String [Plant] -> [Plant]
lookupPlants student garden = findWithDefault [] student garden
