module Problem7
-- Flatten a nested list structure.

data NestedList a = Elem a | NestList (List (NestedList a))

myFlatten : NestedList a -> List a
myFlatten (Elem a) = a :: Nil
myFlatten (NestList Nil) = Nil
myFlatten (NestList (x::xs)) = (++) (myFlatten x) (myFlatten $ NestList xs)
