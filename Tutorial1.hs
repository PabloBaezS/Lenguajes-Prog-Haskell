{-
COmentario multilinea
-- comentario solo
	Int va de -2**63 hasta 2**63
	
	Suma de numeros: sumOfNums = sum[1..1000]
	Conversion de enteros a otro valor:
		fromIntegral
-}

--Numeros Normales
num16 = 16:: Int
sqrtOf16 = sqrt (fromIntegral num16)

--Listas!!!
numerosFav = 2 : 3 : 5 : 18 : 19 : []
numerosFav2 = [2,3,5,18,19]

lenNumerosFav = length numerosFav2
revNumerosFav = reverse numerosFav
estaVacia = null numerosFav2
segundoFavorito = numerosFav !! 1
hayUn18 = 18 `elem` numerosFav2

--Infinitos
infinito = [1,3..]
elemento55000 = infinito !! 55000

{-
import System.Environment

noDiagonal :: (Int, Int) -> (Int, Int) -> Bool
noDiagonal (x1, y1) (x2, y2) = abs(x1 - x2) /= abs(y1 - y2)

solveQueens :: Int -> [Int] -> [[Int]]
solveQueens n yIn
    | length yIn >= n   = [yIn]
    | otherwise         = concatMap (solveQueens n) (map (: yIn) [y | y <- [0..n-1], not $ elem y yIn, all (noDiagonal (-1, y)) inCoords])
    where
        inCoords = zip [0..] yIn

nQueens :: Int -> Int
nQueens n = length $ solveQueens n []

printQueens :: Int -> IO ()
printQueens n = putStrLn $ "Nr. of solutions with n = " ++ (show n) ++ ": " ++ (show (nQueens n))

main :: IO ()
main = do
    args <- getArgs
    let n = read $ head args :: Int
    printQueens n

-}