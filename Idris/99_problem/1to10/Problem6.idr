module Problem6
import Problem5
--  Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

isPalindrome : Eq a => List a -> Bool
isPalindrome xs = xs == (myReverse xs)
