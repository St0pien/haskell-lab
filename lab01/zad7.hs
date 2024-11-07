dzielniki :: (Int, [Int]) -> [Int]
dzielniki (n, ds)
  | d >= n = init ds
  | otherwise =
      if mod n d == 0
        then dzielniki (n, ds ++ [d + 1])
        else dzielniki (n, init ds ++ [d + 1])
  where
    d = last ds

sumIt :: [Int] -> Int
sumIt [] = 0
sumIt (x : xs) = x + sum xs

czyDoskonala :: Int -> Bool
czyDoskonala x = sumIt (dzielniki (x, [1])) == x

----------------

filtr :: [Int] -> Int -> [Int]
filtr [] _ = []
filtr [x] n = if mod n x == 0 then [x] else []
filtr (x : xs) n =
  if mod n x == 0
    then x : filtrRest
    else filtrRest
  where
    filtrRest = filtr xs n

isPerfect :: Int -> Bool
isPerfect n = sum (filtr [1 .. n - 1] n) == n

main :: IO ()
main = print (isPerfect (33550336 * 5))
