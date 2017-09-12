module Hamming

import Data.Vect

-- Add the correct export modifier here...
public export
data Nucleotide = A | T | G | C

Eq Nucleotide where
   A == A = True
   T == T =True
   G == G = True
   C == C = True
   _ == _ = False

-- Add the correct export modifier here...
public export
hamming_distance : Vect n Nucleotide -> Vect n Nucleotide -> Nat
hamming_distance s1 s2 = sum $ map isEqual (zip s1 s2)
                 where
                    isEqual : (Nucleotide,Nucleotide) -> Nat
                    isEqual (f,s) = case f == s of
                            True => 0
                            False => 1
