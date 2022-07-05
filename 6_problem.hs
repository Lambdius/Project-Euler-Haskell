-- https://projecteuler.net/problem=6


solution :: Int -> Int
solution n = sum [1..n] ^ 2 - sum ( map ( \n -> n * n ) [1..n] )


main :: IO ()
main = print( solution 100 )