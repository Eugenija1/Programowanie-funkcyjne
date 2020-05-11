{-
Napisz dwie wersje funkcji bakteria (Druga może nazywać się bakteria') o poniższym typie. 
Szczegółowe instrukcje na wiki.
-}
bakt2 :: Int -> (Int, Int)
bakt2 0 = (2, 0)
bakt2 n = ((snd (bakt2 (n - 1))), (((fst (bakt2 (n - 1))) * 2) + (snd (bakt2 (n - 1)))))


bakt :: Int -> (Int, Int)
bakt 0 = (1, 1)
bakt n = ((snd (bakt (n - 1))), ((fst (bakt (n - 1))) * 2) + (snd (bakt (n - 1)))) 