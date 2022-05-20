module SpaceNeedle (
    printSpaceNeedle
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
    printNarrowPart j j
    printColonSection j 0
    
    putStr "|"
    printQuotes (6 * j)
    putStrLn "|"
    
    printSlashesSection (3 * j - 1) 0 j


printSlashesSection :: Int -> Int -> Int -> IO()
printSlashesSection u v 0 = putStr ""
printSlashesSection u v j = do
    printSpaces v
    putStr "\\_"
    printSlashes u
    putStrLn "_/"
    printSlashesSection (u - 2) (v + 2) (j - 1)


printSlashes :: Int -> IO()
printSlashes 0 = putStr ""
printSlashes u = do
    putStr "/\\"
    printSlashes (u - 1)


-- Print the middle long "neck" or "stem" part
printCenter :: Int -> IO()
printCenter k = do
    printNarrowPart k k
    printMainCenter k k
    

printNarrowPart :: Int -> Int -> IO()
printNarrowPart 0 y = putStr ""
printNarrowPart x y  = do
    printSpaces (3 * y)
    putStrLn "||"
    printNarrowPart (x - 1) y
    

printMainCenter :: Int -> Int -> IO()
printMainCenter x 0 = putStr ""
printMainCenter x y = do
    printMainCenterHelper x x
    printMainCenter x (y - 1)


printMainCenterHelper :: Int -> Int -> IO()
printMainCenterHelper 0 m = putStr ""
printMainCenterHelper n m = do
    printSpaces ((2 * m) + 1)

    putStr "|"
    printPercent (m - 2)
    putStr "||"
    printPercent (m - 2)
    putStrLn "|"

    printMainCenterHelper (n - 1) m


-- Print the supporting base
printBase :: Int -> IO()
printBase n = do
    printColonSection n 0
    
    putStr "|"
    printQuotes (6 * n)
    putStrLn "|"


printColonSection :: Int -> Int -> IO()
printColonSection 0 y = putStr ""
printColonSection x y = do
    printSpaces ((3 * x) - 3)
    putStr "__/"
    printColon (3 * y)
    putStr "||"
    printColon (3 * y)
    putStrLn "\\__"
    printColonSection (x - 1) (y + 1)


printPercent :: Int -> IO()
printPercent 0 = putStr ""
printPercent e = do
    putStr "%"
    printPercent (e - 1)


printQuotes :: Int -> IO()
printQuotes 0 = putStr ""
printQuotes n = do
    putStr "\""
    printQuotes (n - 1)


printColon :: Int -> IO()
printColon 0 = putStr ""
printColon x = do
    putStr ":"
    printColon (x - 1)


printSpaces :: Int -> IO()
printSpaces 0 = putStr ""
printSpaces n = do
    putStr " "
    printSpaces (n - 1)

