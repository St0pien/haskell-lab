type DirectedGraph = ([Int], Int -> Int -> Bool)

atDistance :: DirectedGraph -> Int -> Int -> [Int]
atDistance (vs, achieveable) 0 v = [v]
atDistance (vs, achieveable) d v = filter (\x -> any (`achieveable` x) achieveableOneLess) vs
  where
    achieveableOneLess = atDistance (vs, achieveable) (d - 1) v

g :: DirectedGraph
g = ([1 .. 200], \x y -> abs (y - x) < 2)
