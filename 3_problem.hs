{-# LANGUAGE MultiWayIf #-}


-- https://euler.jakumo.org/problems/view/3.html


lpf :: Integer -> Integer -> Integer -> Integer
lpf n d a = if 
    | d * d <= n && mod n d == 0 -> lpf ( div n d ) d d
    | d * d <= n -> lpf n ( d + 1 ) a
    | n > 1 -> n
    | otherwise -> a
        

pa'lpf :: Integer -> Integer
pa'lpf n = lpf n 2 2

main :: IO ()
main =  do
print( pa'lpf 600851475143 )