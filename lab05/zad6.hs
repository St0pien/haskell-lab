quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort xs =
  let pivot = last xs
      left = filter (< pivot) xs
      right = filter (> pivot) xs
   in quickSort left ++ [pivot] ++ quickSort right
