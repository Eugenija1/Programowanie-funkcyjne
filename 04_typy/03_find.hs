find :: Eq a => [a] -> (a -> Bool) -> Maybe a
find (x:xs) pred     | pred x == True = Just x
                     | length xs == 0 = Nothing
                     | otherwise = find xs pred
