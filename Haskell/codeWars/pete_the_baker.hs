module Main where

type Ingredient = String
type Amount     = Int
type Recipe     = [(Ingredient, Amount)]
type Storage    = [(Ingredient, Amount)]

cakes :: Recipe -> Storage -> Int
cakes recipe storage = minimum $ map countNum recipe
  where
    countNum :: (Ingredient, Amount) -> Int
    countNum (ingredient, amount) =
      foldr
        (\(ingredient1, amount1) res ->
           if ingredient == ingredient1
             then res + (amount1 `quot` amount)
             else res + 0)
        0
        storage

cakesClever :: Recipe -> Storage -> Int
cakesClever recipe storage = minimum $ map (\ (w,q) -> maybe 0 (`div` q) $ lookup w storage) recipe

main = do
  putStrLn . show $
    cakes
      [("flour", 500), ("sugar", 200), ("eggs", 1)]
      [("flour", 1200), ("sugar", 1200), ("eggs", 5), ("milk", 200)]
