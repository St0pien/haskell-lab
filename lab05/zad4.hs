dlugosc :: [a] -> Int
dlugosc x = sum $ map (const 1) x
