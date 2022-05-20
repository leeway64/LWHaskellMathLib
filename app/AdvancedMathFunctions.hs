module AdvancedMathFunctions (
    is_prime,
    print_list,
    is_even,
    print_range
) where


print_list :: [Int] -> IO()

print_list [] = putStr ""
print_list (x:xs) = do
    putStrLn (show x)
    print_list xs


print_range :: Int -> Int -> IO()
print_range n m = print(show [n..m])


is_prime :: Float -> Bool
is_prime 0 = False
is_prime 1 = False
--is_prime x = 

    
is_even :: Int -> Bool
is_even n = n `mod` 2 == 0


--fibonacci :: Int -> Int
--fibonacci n = 
