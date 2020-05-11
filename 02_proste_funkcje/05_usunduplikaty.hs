{-
Napisz funkcję usunduplikaty, która usunie ze stringa powtarzające się znaki.
Podpowiedzi:
* string to lista
* przydatna może być funkcja usuwająca wszystkiego wystąpienia danego elementu z listy

PS zamiast 
    "usunduplikaty :: [Char] -> [Char]" 
mogłoby być 
    "usunduplikaty :: (Eq a) => [a] -> [a]"
Funkcja byłaby wtedy bardziej uniwersalna
-}
usun :: (Eq a) => a->[a]->[a]
usun _ [] = []
usun x (y:ys) | x==y = usun x ys
              | otherwise = y:(usun x ys)

dupl :: (Eq a) =>[a]->[a]
dupl [] = []
dupl (x:xs) | elem x xs = dupl (x: (usun x xs))
            | otherwise = x:(dupl xs)

