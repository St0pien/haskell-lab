d :: [Double] -> Double -> [Double]
db :: [Double] -> Double -> [Double]
d list x = map (\y -> y / x) list

db = flip (map . flip (/))
