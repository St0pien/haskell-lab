data WnrSet a = (Num a, Ord a) => Empty | Set a a [a]

deriving instance (Show a) => Show (WnrSet a)

newtype Wnr a = Wnr [WnrSet a] deriving (Show)

wp :: (Num a, Ord a) => Wnr a
wp = Wnr [Empty]

dl :: (Num a, Ord a) => Wnr a -> a -> Wnr a
dl (Wnr (Empty : sets)) x = Wnr (Set x x [x] : sets)
dl (Wnr (Set sMin sMax xs : sets)) x = Wnr (Set (min x sMin) (max x sMax) (x : xs) : sets)

ts :: (Num a, Ord a) => Wnr a -> Wnr a
ts (Wnr sets) = Wnr (Empty : sets)

wmax :: Wnr a -> [a]
wmax (Wnr sets) = map (\(Set _ x _) -> x) sets

wmin :: Wnr a -> [a]
wmin (Wnr sets) = map (\(Set x _ _) -> x) sets
