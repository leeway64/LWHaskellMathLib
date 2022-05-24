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
    print (contains 4 [4, 4, 100])
    print (get_elems 1 [999, 0])
    print (repeat_val 5 6)
    print (iceFire [-1..13])
    let adjectives = ["Noble", "Honorable"]
    let nouns = ["Jon Snow", "Ned Stark", "Robb Stark"]
    print (adjectivesNouns adjectives nouns)
    print (triangles 10 24)
