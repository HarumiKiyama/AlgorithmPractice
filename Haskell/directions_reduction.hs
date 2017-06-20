data Direction
  = North
  | East
  | West
  | South
  deriving (Eq,Show)





dirReduce :: [Direction] -> [Direction]
dirReduce [] = []
dirReduce (x:xs) = sequenceDir (dirReduce xs) x
  where
    sequenceDir :: [Direction] -> Direction -> [Direction]
    sequenceDir [] dir = dir : []
    sequenceDir xs dir =
      case mergeDirec [head xs, dir] of
        [] -> tail xs
        _ -> dir : xs
      where
        mergeDirec :: [Direction] -> [Direction]
        mergeDirec [North, South] = []
        mergeDirec [South, North] = []
        mergeDirec [West, East] = []
        mergeDirec [East, West] = []
        mergeDirec xs = xs
