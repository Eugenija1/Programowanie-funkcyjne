{-# LANGUAGE FlexibleInstances #-}

class Intable a where
  toInt :: a -> Int

instance Intable String where
  toInt a = read a :: Int
  
instance Intable Int where
    toInt a = a

mySuperAdd :: (Intable a, Intable b) => a -> b -> Int
mySuperAdd x y = toInt x + toInt y