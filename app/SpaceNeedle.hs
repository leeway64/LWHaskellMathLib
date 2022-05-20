module SpaceNeedle (
    printSpaceNeedle,
) where


-- Print an ASCII representation of the Seattle Space Needle
printSpaceNeedle :: Int -> IO()
printSpaceNeedle i = do
    printTop i
    printCenter i
    printBase i


-- Print the top "crown" section of the Space Needle
printTop :: Int -> IO()
printTop j = do
    putStrLn "Top"


-- Print the middle long "neck" or "stem" part
printCenter :: Int -> IO()
printCenter k = do
    printUpperCenter k k
    printMainCenter k k
    

printUpperCenter :: Int -> Int -> IO()
printUpperCenter 0 y = putStr ""
printUpperCenter x y  = do
    printSpaces (3 * y)
    putStrLn "||"
    printUpperCenter (x - 1) y
    

printMainCenter :: Int -> Int -> IO()
printMainCenter x 0 = putStr ""
printMainCenter x y = do
    printMainCenterHelper x x
    printMainCenter x (y - 1)


printMainCenterHelper :: Int -> Int -> IO()
printMainCenterHelper 0 m = putStr ""
printMainCenterHelper n m = do
    printSpaces ((2 * m) + 1)
    putStrLn "|&&||&&|"
    printMainCenterHelper (n - 1) m


-- Print the supporting base
printBase :: Int -> IO()
printBase n = do
    printBaseHelper n 0
    
    putStr "|"
    printBottomBaseHelper (6 * n)
    putStrLn "|"


printBaseHelper :: Int -> Int -> IO()
printBaseHelper 0 y = putStr ""
printBaseHelper x y = do
    printSpaces ((3 * x) - 3)
    putStr "__/"
    printColon (3 * y)
    putStr "||"
    printColon (3 * y)
    putStrLn "\\__"
    printBaseHelper (x - 1) (y + 1)


printBottomBaseHelper :: Int -> IO()
printBottomBaseHelper 0 = putStr ""
printBottomBaseHelper n = do
    putStr "\""
    printBottomBaseHelper (n - 1)


printColon :: Int -> IO()
printColon 0 = putStr ""
printColon x = do
    putStr ":"
    printColon (x - 1)


printSpaces :: Int -> IO()
printSpaces 0 = putStr ""
printSpaces n = do
    --print n
    putStr " "
    printSpaces (n - 1)

