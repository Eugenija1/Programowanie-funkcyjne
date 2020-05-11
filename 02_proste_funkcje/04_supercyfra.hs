{-
Zdefiniuj funkcję supercyfra zgodnie z instrukcjami
Podpowiedzi:
* `div` i `mod` mogą się przydać
* podwójna rekurencja!  
-}
suma :: Int->Int
suma y = y `mod` 10 + y `div` 10

super :: Int->Int
super x
    | x `div` 10 == 0 = x
    | otherwise =  super(suma x)
