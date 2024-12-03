f :: [Integer] -> Integer -> Bool
f l x = all (`elem` take (fromIntegral x) l) [1 .. x]

cp :: [Integer] -> [Integer]
cp l = filter (f l) [1 .. (fromIntegral (length l))]
