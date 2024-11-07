przeksztalcListe :: (Int -> Int) -> [Int] -> [Int]
przeksztalcListe f l = [f y | y <- l]
