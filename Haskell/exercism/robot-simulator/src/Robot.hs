module Robot
    ( Bearing(East,North,South,West)
    , bearing
    , coordinates
    , mkRobot
    , simulate
    , turnLeft
    , turnRight
    ) where

data Bearing = North
             | East
             | South
             | West
             deriving (Eq, Show)

type Coordinate = (Integer,Integer)

data Robot = Robot
  { bearing     :: Bearing
  , coordinates :: Coordinate
  } deriving (Eq, Show)

mkRobot :: Bearing -> Coordinate -> Robot
mkRobot = Robot

simulate :: Robot -> String -> Robot
simulate robot instructions =
  foldl
    (\r x ->
       case x of
         'A' -> robotAdvance r
         _   -> robotTurn x r)
    robot
    instructions
  where
    robotTurn :: Char -> Robot -> Robot
    robotTurn c r =
      case c of
        'R' -> r {bearing = turnRight $ bearing r}
        'L' -> r {bearing = turnLeft $ bearing r}
    robotAdvance :: Robot -> Robot
    robotAdvance r =
      let (f, s) = coordinates r
      in case bearing r of
           North -> r {coordinates = (f, s + 1)}
           South -> r {coordinates = (f, s - 1)}
           East  -> r {coordinates = (f + 1, s)}
           West  -> r {coordinates = (f - 1, s)}


turnLeft :: Bearing -> Bearing
turnLeft direction =
  case direction of
    North -> West
    East  -> North
    South -> East
    West  -> South

turnRight :: Bearing -> Bearing
turnRight direction =
  case direction of
    North -> East
    East  -> South
    South -> West
    West  -> North
