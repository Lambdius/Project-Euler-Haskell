{-# LANGUAGE MultiWayIf #-}
-- https://projecteuler.net/problem=2


getFib :: Integer -> Integer
getFib a = round $ ( ( sqrt 5 + 1 ) / 2 ) ^ a / sqrt 5


evenFibSum :: Integer -> Integer -> Integer -> Integer
evenFibSum n s l = do 
    let fib = getFib n
    if | fib > l -> s 
       | even fib -> evenFibSum ( n + 1 ) ( s + fib ) l
       | otherwise -> evenFibSum ( n + 1 ) s l


paEvenFibSum = evenFibSum 3 0


main :: IO ()
main = print( paEvenFibSum 4000000 )