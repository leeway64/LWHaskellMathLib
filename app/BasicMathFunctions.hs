module BasicMathFunctions (
    successor,
    divide,
    doubleIfGreaterThanPi,
    contains,
    get_elems,
    repeat_val,
    iceFire,
    adjectivesNouns,
    triangles
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

