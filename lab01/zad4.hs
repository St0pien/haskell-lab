stirling :: Int -> Int -> Int
stirling 0 0 = 1
stirling n 0 = 0
stirling n k =
  if n == k
    then 1
    else (n - 1) * stirling (n - 1) k + stirling (n - 1) (k - 1)


