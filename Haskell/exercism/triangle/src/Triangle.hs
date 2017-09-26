module Triangle (TriangleType(..), triangleType) where

data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illegal
                  deriving (Eq, Show)

triangleType
  :: (Num a, Eq a, Ord a)
  => a -> a -> a -> TriangleType
triangleType a b c
  | not (a + b > c && a + c > b && b + c > a) = Illegal
  | a == b && b == c = Equilateral
  | a == b || b == c || a == c = Isosceles
  | otherwise = Scalene
