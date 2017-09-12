module Grains (square, total) where

square :: Integer -> Maybe Integer
square n =
  case n `elem` [1 .. 64] of
    False -> Nothing
    True -> Just $ 2 ^ (n - 1)

total :: Integer
total = 2 ^ 64 - 1
