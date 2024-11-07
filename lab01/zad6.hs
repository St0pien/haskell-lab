merge :: [Int] -> [Int] -> [Int]
merge [] x = x
merge x [] = x
merge (x : xs) (y : ys) =
  if x <= y
    then x : merge xs (y : ys)
    else y : merge (x : xs) ys

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort x =
  let pivot = div (length x) 2
   in merge (mergeSort (take pivot x)) (mergeSort (drop pivot x))
