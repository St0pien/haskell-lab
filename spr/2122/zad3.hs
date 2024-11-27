data Wr a = Leaf | Branch Integer [a] (Wr a)

dg :: Wr a -> [a] -> Wr a
dg Leaf l = Branch 1 l Leaf
dg branch l = Branch l branch

ug :: Wr a -> Wr a
ug Leaf = Leaf
ug (Branch elements branchTail) = branchTail

de :: Wr a -> a -> Wr a
de Leaf x = Branch [x] Leaf
de (Branch elements branchTail) x = Branch (x : elements) branchTail

ue :: Wr a -> Wr a
ue Leaf = Leaf
ue (Branch (x : xs) branchTail) = Branch xs branchTail

lg :: Wr a -> Integer
