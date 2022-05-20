module Main where

import HaskellSay (haskellSay)
import SpaceNeedle

import BasicMathFunctions
import AdvancedMathFunctions


main :: IO ()
main = do
    haskellSay "hello world"
    print (is_prime 0)
    print_list [1,2,3,4, 6]
    print(is_even 2)
    print_range 1 5
    -- printSpaceNeedle 2
    print (successor 9)
    print (divide 9 9)
    print (doubleIfGreaterThanPi 3.15)
    
