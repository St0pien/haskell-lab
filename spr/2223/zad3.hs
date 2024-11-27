data Bsk a = Empty | El [a] a Integer

deriving instance (Show a) => Show (Bsk a)

de :: (Eq a) => Bsk a -> a -> Bsk a
de Empty x = El [x] x 1
de (El els fs count) x = El (x : els) fs (if fs == x then count + 1 else count)

oe :: Bsk a -> a
oe (El (el : els) fs count) = el

ue :: (Eq a) => Bsk a -> Bsk a
ue (El (el : els) fs count) = El els fs (if el == fs then count - 1 else count)

le :: (Eq a) => Bsk a -> Integer
le (El _ _ count) = count

bsk2l :: Bsk a -> [a]
bsk2l (El els _ _) = els
