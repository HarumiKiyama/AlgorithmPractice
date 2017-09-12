module Leap

export
isLeap : Int -> Bool
isLeap year = case (isDivisable year 4, isDivisable year 100) of
       (False, _) => False
       (True, False) => True
       (True, True) => isDivisable year 400
  where
      isDivisable : Int -> Int -> Bool
      isDivisable n d = mod n d == 0
