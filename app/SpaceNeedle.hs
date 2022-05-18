module SpaceNeedle (
    printSpaceNeedle,
) where


printSpaceNeedle :: Int -> IO()

printSpaceNeedle i = do
    putStrLn "hello world"
    printTop i
    printCenter i
    printBase i


printTop :: Int -> IO()
printTop j = do
    putStrLn "Top"


printCenter :: Int -> IO()
printCenter k = do
    putStrLn "center"
    printUpperCenter k
    printMainCenter k k
    

printUpperCenter :: Int -> IO()
printUpperCenter 0 = putStr ""
printUpperCenter x = do
    putStrLn "           ||"
    printUpperCenter (x - 1)
    

printMainCenter :: Int -> Int -> IO()
printMainCenter x 0 = putStr ""
printMainCenter x y = do
    printMainCenterHelper x
    printMainCenter x (y - 1)


printMainCenterHelper :: Int -> IO()
printMainCenterHelper 0 = putStr ""
printMainCenterHelper n = do
    putStrLn "        |&&||&&|"
    printMainCenterHelper (n - 1)


printBase :: Int -> IO()
printBase n = do
    putStr "|"
    printBottomBaseHelper (6 * n)
    putStrLn "|"


printBaseHelper :: Int -> IO()
printBaseHelper 0 = putStr ""
printBaseHelper x y = do
    printBaseHelper x y


printBottomBaseHelper :: Int -> IO()
printBottomBaseHelper 0 = putStr ""
printBottomBaseHelper n = do
    putStr "\""
    printBottomBaseHelper (n - 1)


printSpaces :: Int -> IO()
printSpaces n = putStr " "

