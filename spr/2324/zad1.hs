perms :: Integer -> [String]
perms 0 = [""]
perms n = concatMap (\c -> map (c :) (perms (n - 1))) "abc"

gen :: Integer -> [String]
gen n = filter ((0 ==) . sum . map getValue) (perms (3 * n))
  where
    getValue 'a' = 2
    getValue _ = -1
