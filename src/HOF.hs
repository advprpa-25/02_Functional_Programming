-------------------------------------------------------------------------------
-- Higher Order Functions
-------------------------------------------------------------------------------
import Prelude hiding ((.), sum, and)
import Data.Char


-------------------------------------------------------------------------------
-- Transform list elements
-------------------------------------------------------------------------------

-- Square a list of ints
squares :: [Int] -> [Int]
squares []     = []
squares (i:is) = i^2 : squares is

-- Extract email addresses
data Student = Student { email :: String, grade :: Float }

ss = [Student "s1@" 6 , Student "s2@" 6]

emails :: [Student] -> [String]
emails []     = []
emails (s:ss) = email s : emails ss

-- 1. Same function name "transform"


-- 2. Same names in list patterns (a:as)



-- 3. Abstract over difference and introduce f



-------------------------------------------------------------------------------
-- Aggregate lists
-------------------------------------------------------------------------------

and :: [Bool] -> Bool
and []         = True
and (x:xs)     = x && and xs

items :: [(Int, String)]
items = [(1, "a"), (2, "b"), (3, "c")]

total :: [(Int, String)] -> Int
total []     = 0
total (i:is) = fst i + total is  


-- aggregate :: (a -> a -> a) -> a -> [a] -> a
aggregate :: (e -> a -> a) -> a -> [e] -> a
aggregate _  z []      = z
aggregate op z (x:xs)  = x `op` (aggregate op z xs)


and' = undefined

total' = undefined

-------------------------------------------------------------------------------
-- Composition
-------------------------------------------------------------------------------
(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \a -> f (g a)

a :: Int
a = (length . head . fst) (["hallo", "bla"], True)



