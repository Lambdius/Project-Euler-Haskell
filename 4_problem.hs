{-# LANGUAGE MultiWayIf #-}
-- https://projecteuler.net/problem=4


innerRec :: Int -> Int -> Int
innerRec a b = if show (a * b) == reverse (show $ a * b) then a * b else innerRec a ( b - 1 )


step :: Int -> Int -> Int -> Int
step i a b = do
    let r = innerRec a b
    if | a < 1 -> i
       | i < r -> step r ( a - 1 ) b
       | otherwise -> step i ( a - 1 ) b


paStep :: Int -> Int
paStep a = step 1 ( a - 1 ) ( a - 1 )


main :: IO ()
main = print( paStep 1000 )