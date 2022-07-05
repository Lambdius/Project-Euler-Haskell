-- https://projecteuler.net/problem=5


nok :: Int -> Int -> Int -> Int
nok a b c = if b <= c then nok ( div a ( gcd a b ) * b ) ( b + 1 ) c else a


nokof :: Int -> Int
nokof = nok 1 2


main :: IO ()
main = print( nokof 20 )