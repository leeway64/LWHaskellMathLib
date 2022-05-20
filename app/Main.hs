module Main where

import HaskellSay (haskellSay)
import SpaceNeedle

import MathFunctions


main :: IO ()
main = do
    haskellSay "hello world"
    print (is_prime 0)
    print_list [1,2,3,4, 6]
    print(is_even 2)
    print_range 1 5
    printSpaceNeedle 2
    
