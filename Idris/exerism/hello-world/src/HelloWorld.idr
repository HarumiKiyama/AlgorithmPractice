module Main

export
greet : Maybe String -> String
greet name = case name of
      Nothing => "Hello, World!"
      Just n =>  "Hello, " ++ n ++ "!"
