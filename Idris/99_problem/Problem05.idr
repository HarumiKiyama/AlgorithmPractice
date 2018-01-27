module Problem5
-- Reverse a list.

export
myReverse : List a -> List a
myReverse Nil = Nil
myReverse (x::xs) = (myReverse xs) ++ x::Nil

