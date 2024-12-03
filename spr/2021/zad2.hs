data Tree a = Empty | Node a (Tree a) (Tree a)

traverseTree :: (Eq a) => a -> Tree a -> (Bool, [a])
traverseTree x Empty = (False, [])
traverseTree x (Node v left right)
  | x == v = (True, [v])
  | otherwise = if inLeft then (True, v : leftPath) else (inRight, v : rightPath)
  where
    (inLeft, leftPath) = traverseTree x left
    (inRight, rightPath) = traverseTree x right

findPath :: (Eq a) => a -> Tree a -> [a]
findPath x Empty = []
findPath x tree =
  let (found, result) = traverseTree x tree
   in if found then result else []

t = Node 10 (Node 5 (Node 4 Empty Empty) (Node 6 Empty Empty)) (Node 20 Empty Empty)
