dlugoscPalindromow :: [String] -> Int
dlugoscPalindromow = sum . map length . filter (\x -> reverse x == x)
