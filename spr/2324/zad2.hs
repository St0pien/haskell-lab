calculateCollatz :: Integer -> Integer
calculateCollatz n
  | even n = div n 2
  | otherwise = 3 * n + 1

collatz :: Integer -> [Integer]
collatz n = map (fromIntegral . length . steps) [1 .. n]
  where
    steps = takeWhile (/= 1) . iterate calculateCollatz
