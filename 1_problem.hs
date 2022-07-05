-- https://projecteuler.net/problem=1


-- Stupid solution
solution1 :: Integer -> Integer
solution1 n =
    sum ( filter ( \n -> mod n 3 == 0 || mod n 5 == 0 ) [1..n-1] )



-- Carl Friedrich Gauss method
getMultiple :: Integer -> Integer -> Integer
getMultiple a b = div ( a * div b a * div ( b + 1 ) a ) 2


solution2 :: Integer -> Integer
solution2 n = getMultiple 3 n + getMultiple 5 n - getMultiple 15 n



main :: IO ()
main = do
    print( solution1 1000 )
    print( solution2 1000 )