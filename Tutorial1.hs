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