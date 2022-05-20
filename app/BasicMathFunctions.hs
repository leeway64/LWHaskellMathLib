module BasicMathFunctions (
    successor,
    divide,
    doubleIfGreaterThanPi
) where


successor x = succ x

-- Backticks indicate infix notation
divide x y = x `div` y

-- If statement
doubleIfGreaterThanPi x = if x > pi
                        then 2 * x
                        else x


