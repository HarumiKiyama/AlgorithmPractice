module Problem1
-- Find the last element of a list.

myLast : List a -> a
myLast (x::Nil) = x
myLast (_::xs) = myLast xs
