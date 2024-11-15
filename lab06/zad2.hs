foldReverse :: [a] -> [a]
foldReverse = foldl (\acc -> (: acc)) []

foldReverse2 :: [a] -> [a]
foldReverse2 = foldr (\x acc -> acc ++ [x]) []
