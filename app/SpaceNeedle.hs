module SpaceNeedle (
    printSpaceNeedle,
    printTop,
    printCenter,
    printUpperCenter,
    printMainCenter,
    printMainCenterHelper,
    printBase,
    printSpaces
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
    putStrLn "bottom"


printSpaces :: Int -> IO()
printSpaces n = putStr " "

