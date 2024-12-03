digits :: Int -> [Int]
digits x
  | x < 10 = [x]
  | otherwise = (x `mod` 10) : digits (x `div` 10)

tilOneDigit :: Int -> Int
tilOneDigit x
  | x < 10 = x
  | otherwise = tilOneDigit $ sum $ digits x

sevens :: Int -> [Int]
sevens n = take n $ filter ((== 7) . tilOneDigit) [7 ..]
