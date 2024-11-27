wIluListach :: Int -> [[Int]] -> [Int]
wIluListach n ls = map (\x -> (length . filter (elem x)) ls) [1 .. n]
