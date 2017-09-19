module Raindrops (convert) where

convert :: Int -> String
convert n =
  let res = mod3 ++ mod5 ++ mod7
  in if length res == 0
       then show n
       else res
  where
    mod3 =
      if n `mod` 3 == 0
        then "Pling"
        else ""
    mod5 =
      if n `mod` 5 == 0
        then "Plang"
        else ""
    mod7 =
      if n `mod` 7 == 0
        then "Plong"
        else ""
