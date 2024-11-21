wiekszeOdB :: (Ord a) => [a] -> a -> [a]

wiekszeOd lista a = [x | x <- lista, x > a]

wiekszeOdB = flip (filter . (<))
