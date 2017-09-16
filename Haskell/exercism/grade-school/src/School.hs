module School (School, add, empty, grade, sorted) where

type School = [(Int, [String])]

add :: Int -> String -> School -> School
add gradeNum student [] = [(gradeNum, [student])]
add gradeNum student (x@(grade, s):xs) =
  if grade == gradeNum
    then  [(gradeNum, nameSort $ s ++ [student])] ++ xs
    else [x] ++ add gradeNum student xs


empty :: School
empty = []

grade :: Int -> School -> [String]
grade gradeNum school =
  case lookup gradeNum school of
    Just a  -> a
    Nothing -> []

sorted :: School -> [(Int, [String])]
sorted [] = []
sorted (x:xs) = left ++ [x] ++ right
  where
    left = sorted [i | i <- xs, fst x >= fst i]
    right = sorted [i | i <- xs, fst x <= fst i]

nameSort :: [String] -> [String]
nameSort [] = []
nameSort (x:xs) = left ++ [x] ++ right
  where
    left = nameSort [i | i <- xs, head x >= head i]
    right = nameSort [i | i <- xs, head x <= head i]
