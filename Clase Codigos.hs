import Control.Exception
--NOTAS:
--LAMDA EN HASKELL ES \ BACK SLASH



--Ejemplo de la funcion suma de dos enteros
suma :: Integer -> Integer -> Integer
suma x y = x + y

--Ejemplo de funcion suma de 3 enteros
--sumaenteros :: Int -> Int -> Int -> Int
--sumaenteros x y z = x + y + z

--Funcion factorial
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n -1)

--Funcion fibonacci
fibo :: Integer -> Integer
fibo 0 = 1
fibo 1 = 1
fibo n = fibo (n -1) + fibo (n -2)

-- Numeros primos
divisible::Int->Int->Bool
divisible x y = (mod x y) == 0
  
divisibles::Int->[Int]
divisibles x = [y | y <-[1..x],divisible x y]
  
esPrimo::Int->Bool
esPrimo n = length (divisibles n) <=2
  
primos::Int->[Int]
primos n = [x | x <-[1..n],esPrimo x]  --La raya es tal que (x tal que x desde 1 a n)

main = do
  putStrLn ""
  putStrLn ""
  putStrLn "____INCIO PROGRAMA____ "
  putStrLn ""
  putStrLn ""
  putStrLn "La suma de dos numeros enteros es: "
  print (suma 16 7)
  putStrLn ""
  putStrLn "_______ "
  putStrLn "El factorial de 10 es:"
  print (factorial 10)
  putStrLn ""
  putStrLn "_______ "
  putStrLn "El fibonacci de 14 es:"
  print (fibo 14)
  putStrLn ""
  putStrLn "_______ "
  --Ejemplo funcion lambda
  putStrLn "El siguiente del numero 12 es: "
  print ((\x -> x + 1) 12)
  putStrLn "_______ "
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "_______LISTAS_______"
  putStrLn ""
  let l1 = [1 .. 10]
  putStrLn "La lista es: "
  print (l1)
  putStrLn "La cabeza de la lista es: "
  print (head l1)
  putStrLn "La cola de la lista es: "
  print (tail l1)
  putStrLn "El ultimo de la lista es: "
  print (last l1)
  putStrLn "La lista sin el ultimo es: "
  print (init l1)
  putStrLn "Esta vacia la lista? "
  print (null l1)
  putStrLn "Longitud de la lista: "
  print (length l1)
  putStrLn "La lista al reves es: "
  print (reverse l1)
  putStrLn "Un subconjunto de una lista es:"
  print (take 4 [1 .. 10])
  putStrLn "Otro subconjunto de una lista es:"
  print (drop 4 [1 .. 10])
  let az = [145, 90, 60, 120, 119, 91, 101]
  putStrLn "El valor maximo es:"
  print (maximum az)
  putStrLn "El valor minimo es:"
  print (minimum az)
  putStrLn "La suma de los valores es:"
  print (sum az)
  putStrLn "La multiplicacion de los valores es:"
  print (product az)
  putStrLn "Existe un 102 en la lista?"
  print (elem 101 az)
  resultado <- try (evaluate (14 `div` 0)) :: IO (Either SomeException Int)
  case resultado of
    Left ex -> putStrLn $ "Excepcion ocurrida" ++ show ex
    Right val -> putStrLn $ "La respuesta es" ++ show val
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "_______NUMEROS PRIMOS_______"
  putStrLn ""
-- Numeros primos
  putStrLn "Los numeros primos de 50 son: "
  print(primos 50)  


