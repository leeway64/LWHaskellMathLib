module BasicMathFunctions (
    successor,
    divide,
    doubleIfGreaterThanPi,
    contains,
    get_elems,
    repeat_val,
    iceFire,
    adjectivesNouns,
    triangles,
    removeNonUppercase,
    factorial,
    addVectors,
    tell,
    length',
    first',
    bmiTell,
    initials,
) where


successor x = succ x


-- Backticks indicate infix notation
divide x y = x `div` y


-- If statement
doubleIfGreaterThanPi x = if x > pi
                        then 2 * x
                        else x


-- Returns true if x is in y, false if not
contains x y = x `elem` y


-- Get the first x elements from y and puts them into a list
get_elems x y = take x y


-- Gets the first u values from an infinite list containing only v
repeat_val u v = take u (repeat v)

-- List comprehension example. If x is less than 7, print ICE, else print FIRE.
-- x > 0 is the predicate
iceFire xs = [if x < 7 then "ICE" else "FIRE" | x <- xs, even x]


-- Combines an adjective with a noun
adjectivesNouns adjectives nouns = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]


-- Find the triangles that have a certain perimeter. z is the maximum side length
triangles z perimeter = [(a, b, c) | c <- [1..z], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2,
                                                                        a + b + c == perimeter]

-- Remove any character from the string that is not an uppercase letter
removeNonUppercase :: [Char] -> [Char]  -- Explicit type declaration
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]  


{-
Find the factorial recursively.
Integral is a typeclass that includes only whole numbers. A typeclass is an interface that
determines behavior. If a type is a member of the typeclass, then it implements the behavior of
the typeclass (information adapted from Learn You a Haskell for Great Good).
The => symbol is a class constraint. In this case, it forces a to be an Integral
-}
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)


-- Add 2 vectors together using pattern matching.
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


-- Prints information about a list
tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is longer than 2 elements. The first two elements are: " ++ show x ++ " and " ++ show y


length' :: (Num b) => [a] -> b
length' [] = 0
-- The _ matches the head of the list. The length is equal to 1 added to the length of tail.
length' (_:xs) = 1 + length' xs


first' :: String -> String
first' "" = "Empty string"
-- all@(x:xs) is an as pattern. I can use all as if I'm calling x:xs.
first' all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]


-- | is a guard; they're kind of like if-else statements.
-- Ord is a typeclass for things that can be ordered.
max' :: (Ord a) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b


-- Prints out the BMI results. weight and height are in kilograms and meters.
-- The variables in the where section can be used in this function
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= underweight = "You're underweight"
    | bmi <= normal = "You're normal"
    | bmi <= overweight    = "You're overweight"
    | otherwise     = "You're obese"
    where bmi = weight / height ^ 2
          underweight = 18.5
          normal = 25.0
          overweight = 30.0


-- Get initials based on first name and last name
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname
