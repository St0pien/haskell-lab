import Data.Char (isLower)

maleLitery :: [String] -> [String]

-- maleLitery = map (filter isLower)

-- OR

maleLitery = map (filter (`elem` ['a'..'z']))
