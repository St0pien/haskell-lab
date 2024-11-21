data Tree a = Empty | Node a (Tree a) (Tree a)

preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node x left right) = x : preorder left ++ preorder right

postOrder :: Tree a -> [a]
postOrder Empty = []
postOrder (Node x left right) = postOrder left ++ postOrder right ++ [x]

inOrder :: Tree a -> [a]
inOrder Empty = []
inOrder (Node x left right) = inOrder left ++ [x] ++ inOrder right
