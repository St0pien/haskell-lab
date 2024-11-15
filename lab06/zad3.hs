myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\x acc -> f x : acc) []

myMap2 f = foldl(\acc x -> acc ++ [f x]) []
