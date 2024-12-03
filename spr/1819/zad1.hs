a :: Integer -> Integer
b :: Integer -> Integer
a 0 = 1
a n = (n - 1) * b (n - 1) - 3 * a (n - 1)

b 0 = 1
b n = 3 * b (n - 1) + (n - 1) * (n - 1) * a (n - 1) - (n - 1) * (n - 1)

anSums :: [(Integer, Integer)]
anSums = iterate (\(n, an) -> (n + 1, an + a (n + 1))) (0, a 0)

seqIndex :: Integer -> Integer
seqIndex m =
  let (k : ks) = dropWhile (\(_, s) -> s < m) anSums
   in fst k
