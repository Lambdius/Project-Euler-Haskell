-- https://projecteuler.net/problem=20


import Data.Char (digitToInt)


solution :: Integer -> Int
solution n = sum ( map digitToInt ( show ( product [1..n] ) ) )


main :: IO ()
main = print( solution 100 )