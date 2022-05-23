module BasicMathFunctions (
    successor,
    divide,
    doubleIfGreaterThanPi,
    contains,
    get_elems,
    repeat_val,
    iceFire
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

