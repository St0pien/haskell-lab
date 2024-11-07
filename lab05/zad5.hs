slowaDlugosci :: Char -> Char -> Integer -> [String]
slowaDlugosci _ _ 0 = [""]
slowaDlugosci a b n =
  map (a :) prev ++ map (b :) prev
  where
    prev = slowaDlugosci a b (n - 1)
