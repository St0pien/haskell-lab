maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x : xs) = max x (maximum' xs)

ktoraCwiartka :: [(Int, Int)] -> Int
ktoraCwiartka points =
  let quarters =
        [ [1 | (x, y) <- points, x >= 0, y >= 0],
          [2 | (x, y) <- points, x <= 0, y >= 0],
          [3 | (x, y) <- points, x <= 0, y <= 0],
          [4 | (x, y) <- points, x >= 0, y <= 0]
        ]
   in snd $ maximum' [(length x, head x) | x <- quarters]
