fib :: (Integer, Integer) -> [(Integer, Integer)]
fib = iterate (\(m, n) -> (n, m + n))

fibList = map snd (fib (0,1))
