module Problem4
-- Find the number of elements of a list.

myLength : List a -> Int
myLength Nil = 0
myLength (_::xs) = 1 + myLength xs
