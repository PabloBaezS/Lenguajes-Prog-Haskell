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
-- El "_" es un: "no interesa el resto", sirve para solo tener en cuenta el primer elemento de la lista, dejando de lado el resto ([])
    elimRepLista2 a (b : c) =           -- (b:c) significan los elementos de la lista, la b representa la cabeza, la c la cola(resto)
      if Set.member b a   --Aquí compara el elemento en el que el programa está parado con el elemento de la cabeza
        then elimRepLista2 a c    --si el elemento ya está en la nueva lista, pues lo deja pasar
        else b : elimRepLista2 (Set.insert b a) c    -- si el elemento no está en la lista, lo agrega, partiendo desde b(la cabeza) hasta la segunda posición (c,la cola)


main :: IO [Int]
main = do
  putStrLn ""
  putStrLn ("¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬ PARCIAL HASKELL ¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬")
  --putStrLn "|  Inserta tus numeros separados por espacios (e.g. 4 5 3 2):   |"
  putStr "|  --> "
  --line <- getLine
  putStrLn "|  La lista sin duplicados es:                                  |"
  --let num = return $ map read (words line)
  --num -> numeros :: Int
  print(elimRepLista [1,2,3,4,5,6,1,2,3,4,5,6])
-- El words divide el input cada espacio en blanco en diferentes posiciones y el map retorna una lista de dichos valores