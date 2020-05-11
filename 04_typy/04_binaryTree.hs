<<<<<<< HEAD
{-# LANGUAGE FlexibleInstances #-}

data Tree a = Empty | Node a (Tree a) (Tree a)
      deriving (Show)

insert :: Ord a => a -> Tree a ->  Tree a
insert el Empty = Node el Empty Empty
insert el (Node a left right)
	| el == a	= Node el left right
	| el < a	= Node a (insert el left) right
    | el > a	= Node a left (insert el right)

empty :: Tree a -> Bool
empty  Empty = True
empty  (Node a left right) = False

search :: Ord a => a -> Tree a -> Bool
search el Empty = False
search el (Node a left right)
	| el == a	= True
	| el < a	= search el left
	| el > a	= search el right

toString :: Show a =>Tree a -> [Char]
toString Empty = ""
toString (Node a left right) =(show a) ++ "(" ++ toString left ++ "," ++ toString right ++ ")"

leaves :: Num a => Tree a -> Int
leaves Empty = 0
leaves (Node a Empty Empty) = 1
leaves (Node a left right) = leaves left + leaves right

nnodes :: Num a => Tree a -> Int
nnodes Empty = 0
nnodes (Node a left right) = 1 + nnodes left + nnodes right

nsum :: Num a => Tree a -> a
nsum Empty = 0
nsum (Node a left right) = a + nsum left + nsum right

delete :: (Ord a) => Tree a -> a -> Tree a
delete Empty _ = Empty
delete (Node v left right) x  
	| x == v = deleteX (Node v left right)
	| x  < v = Node v (delete left x) right
	| x  > v = Node v left (delete right x)

deleteX :: (Ord a) => Tree a -> Tree a 
deleteX (Node v Empty right) = right
deleteX (Node v left Empty) = left
deleteX (Node v left right) = (Node v2 left right)
	where 
		v2 = leftistElement right

leftistElement :: (Ord a) => Tree a -> a
leftistElement (Node v Empty _) = v
leftistElement (Node _ t1 _) = leftistElement t1

myTree :: Tree Int
myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)
emptyTree = Empty
=======
--myTree :: Tree Int
--myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)
insert :: (Ord a) => a -> Tree a -> Tree a  
insert x Empty = Node x Empty Empty 
insert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (insert x left) right  
    | x > a  = Node a left (insert x right)

empty :: Tree a -> Bool
empty Empty = True 
empty (Node a left right) = False
>>>>>>> 4d04f506feef6020a301afdfdaf52df9e11958e5
