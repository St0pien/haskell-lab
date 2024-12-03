genPerm :: Int -> [String]
genPerm 1 = ["a", "b"]
genPerm x =
  let sub = genPerm (x - 1)
      with c = map (c :) sub
   in concatMap with "ab"

countC :: String -> Char -> Int
countC s c = length $ filter (== c) s

genPalim :: Int -> [String]
genPalim n
  | even n = map (\s -> s ++ reverse s) p
  | otherwise = concatMap (\s -> map (\c -> s ++ [c] ++ reverse s) "ab") p
  where
    p = genPerm (n `div` 2)

bp :: Int -> [String]
bp = filter (\s -> countC s 'a' == countC s 'b') . genPalim
