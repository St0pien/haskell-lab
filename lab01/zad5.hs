iloczynListy :: [Integer] -> Integer
iloczynListy [] = 1
iloczynListy (x : xs) = x * iloczynListy xs

iloczynListy2 :: [Integer] -> Integer
iloczynListy2 = foldr (*) 1

iloczynListy3 :: [Integer] -> Integer
iloczynListy3 = product

-- iloczynListy [1..1000]
-- iloczynListy2 [1..1000]
-- iloczynListy3 [1..1000]
