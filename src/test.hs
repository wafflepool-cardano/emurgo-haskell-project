

import Control.Monad (guard)


data Cell = Cell (Integer, Integer) Char deriving (Eq, Ord, Show)


grid = [ "__C________R___"
       , "__SI________U__"
       , "__HASKELL____B_"
       , "__A__A_____S__Y"
       , "__R___B___C____"
       , "__PHP____H_____"
       , "____S_LREP_____"
       , "____I__M_Y__L__"
       , "____L_E__T_O___"
       , "_________HB____"
       , "_________O_____"
       , "________CN_____"
       ]


--variant of outputGrid, for arbitrary Show-able structures
og :: Show a => [a] -> IO ()
og = putStrLn . unlines . map show

-- check if divisible by 2
div2 :: Int -> Bool
div2 x = x `mod` 2 == 0

-- List monad notation
mapped = do
    i <- [0..9]
    return (i * 2)


filtered = do
    i <- [0..]
    guard (div2 i)
    return i


mappedAndFiltered = do
    i <- [0..]
    guard (div2 i)
    return (i + 1)


--coordinates 1
coords = [[(x, y) | x <- [0..7]] | y <- [0..7]]

-- coordinates 2
coords2 = do
    row <- [0..7]
    return $ do
        col <- [0..7]
        return (row, col)    



--coordinates 3
cols = repeat [0..]
rows = map repeat [0..]
coordsInf = zipOverGrid rows cols

repeat8 = take 8 . repeat
cols8 = repeat8 [0..7]
rows8 = map repeat8 [0..7]


--coords3 = zipWith (zip) cols8 rows8
zipOverGrid = zipWith zip

coords3 = zipOverGrid rows8 cols8


-- try og $ zipOverGrid coords grid

-- try og $ zipOverGrid coordsInf grid




-- Now that we have the Cell datatype

zipOverGridWith = zipWith . zipWith 


-- try og $ zipOverGridWith Cell coords grid
