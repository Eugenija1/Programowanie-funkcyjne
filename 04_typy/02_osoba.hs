data Osoba = Osoba { firstName :: String  
                     , lastName :: String  
                     , pesel :: String    
                     } deriving (Show)  

instance Eq Osoba where
    (Osoba n1 l1 p1) == (Osoba n2 l2 p2) = (read p1 :: Int) == (read p2 :: Int)

instance Ord Osoba where
    (Osoba n1 l1 p1) > (Osoba n2 l2 p2) = l1 > l2
    (Osoba n1 l1 p1) < (Osoba n2 l2 p2) = l1 < l2