subseq :: [a] -> [[a]]
subseq [] = []
subseq [x] = [[x]]
subseq (x : xs) = (x : xs) : subseq xs ++ subseq (take (length xs) (x : xs))

cztery :: [Int] -> Int
cztery = foldr (max . length) 0 . filter ((4 ==) . sum) . subseq
