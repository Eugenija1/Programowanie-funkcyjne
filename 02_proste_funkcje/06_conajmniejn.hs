{-
Zdefiniuj funkcję conajmniejn, która zostawia w liście elementy, które występuje co najmniej określoną liczbę razy
Podpowiedzi:
* przydatna może okazać się pomocnicza funkcja, która zlicza liczbę wystąpień danego elementu w liście
* przydatna może okazać się pomocnicza funkcja, która usuwa wszystkie wystąpienia danego elementu w liście
* w ramach optymalizacji obie te pomocnicze funkcje można zaimplementować w postaci jednej funkcji
-}
usun :: (Eq a) => a->[a]->[a]
usun _ [] = []
usun x (y:ys) | x==y = usun x ys
              | otherwise = y:(usun x ys)

dupl :: (Eq a) => [a] -> [a]
dupl [] = []
dupl (x:xs)| elem x xs = dupl (x: (usun x xs))
           | otherwise = x:(dupl xs)


count :: (Eq a) => a->[a] -> Int -> [a]
count x _ 0 = [x]
count _ [] _ = []
count x (y:ys) num | x==y = count x ys (num-1)
                   | otherwise = count x ys num

conajmniej :: (Eq a) => [a] -> Int -> [a]
conajmniej [] _ = []
conajmniej (y:ys) num = dupl((count y ys (num-1))++(conajmniej ys num))
