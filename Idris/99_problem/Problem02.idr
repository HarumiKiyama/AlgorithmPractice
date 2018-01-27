module Problem2
--Find the last but one element of a list.

myButLast : List a->a
myButLast (x::_::Nil) = x
myButLast (_::xs) = myButLast xs
