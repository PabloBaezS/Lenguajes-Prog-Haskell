{-
https://stackoverflow.com/questions/8115705/convert-string-of-whitespace-separated-numbers-in-a-string-into-integers-and-pla
Importa un modulo llamado "Data.Set" el cual se usa para realizar operaciones con arboles binarios o listas, permitiendo realizar una accion mas rapida como ordenar, eliminar o buscar interceptos
-}
import qualified Data.Set as Set


-- Luego se crea la funcion elimRepLista (Eliminar repetidos de la lista)
elimRepLista :: Ord a => [a] -> [a]
-- El set.empty crea un nuevo set vacio donde se ordenaran y se borraran los valores necesarios
elimRepLista = elimRepLista2 Set.empty
  where -- Keyword para dividir la logica de las operaciones a realizar, no es necesario pero sirve para hacer mas entendible y rapido el codigo
    elimRepLista2 _ [] = [] 
-- El "_" es un no interesa el resto, sirve para solo tener en cuenta uno de los tipos siguientes, dejando de lado el resto ([])
    elimRepLista2 a (b : c) =
      if Set.member b a
        then elimRepLista2 a c
        else b : elimRepLista2 (Set.insert b a) c


main :: IO [Int]
main = do
  putStrLn ""
  putStrLn ("¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬ PARCIAL HASKELL ¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬")
  putStrLn "|  Inserta tus numeros separados por espacios (e.g. 4 5 3 2):   |"
  putStr "|  --> "
  line <- getLine
  putStrLn "|  La lista con duplicados es:                                  |"
  let num = return $ map read (words line)
  num -> numeros :: Int
  print(elimRepLista num)
-- El words divide el input cada espacio en blanco en diferentes posiciones y el map retorna una lista de dichos valores