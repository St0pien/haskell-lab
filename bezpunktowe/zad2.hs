nonZero :: [Int] -> Int
nonZero list = length $ filter (\x -> x /= 0) list

nonZero1 = length . filter (\x -> x /= 0)

nonZero2 = length . filter (/= 0)
