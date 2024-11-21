data Tree a = Empty | Node a (Tree a) (Tree a)

isEven :: Tree Integer -> Bool
isEven Empty = True
isEven (Node v x y) = even v && isEven x && isEven y
