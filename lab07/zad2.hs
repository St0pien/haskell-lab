data Calkowite = Zero | Nast Calkowite | Pred Calkowite deriving (Show)

toInt :: Calkowite -> Integer
toInt Zero = 0
toInt (Pred x) = toInt x - 1
toInt (Nast x) = toInt x + 1

fromInt :: Integer -> Calkowite
fromInt 0 = Zero
fromInt x
  | x < 0 = Pred (fromInt (x + 1))
  | x > 0 = Nast (fromInt (x - 1))
