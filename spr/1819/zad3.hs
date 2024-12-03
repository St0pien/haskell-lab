cykl :: [a] -> [[a]]
cykl l = foldl (\((x : xs) : rest) _ -> (xs ++ [x]) : (x : xs) : rest) [l] (drop 1 l)
