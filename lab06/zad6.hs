dlaKazdego :: (a -> Bool) -> [a] -> Bool
dlaKazdego f = foldl (&&) True . map f

istnieje :: (a -> Bool) -> [a] -> Bool
istnieje f = foldl (||) False . map f
