myMap :: (a -> b) -> [a] -> [b]
myMap f arr = zipWith (\x y -> f x) arr [1 ..]

myZip :: [a] -> [b] -> [(a, b)]
myZip = zipWith (,)
