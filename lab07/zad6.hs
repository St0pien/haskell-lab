data Matrix = Matrix Integer Integer Integer Integer

instance Show Matrix where
  show (Matrix a b c d) = "[ " ++ show a ++ " " ++ show b ++ " ]\n" ++ "[ " ++ show c ++ " " ++ show d ++ " ]\n"

instance Num Matrix where
  (+) (Matrix a1 b1 c1 d1) (Matrix a2 b2 c2 d2) = Matrix (a1 + a2) (b1 + b2) (c1 + c2) (d1 + d2)
  (*) (Matrix a1 b1 c1 d1) (Matrix a2 b2 c2 d2) = Matrix (a1 * a2 + b1 * c2) (a1 * b2 + b1 * d2) (c1 * a2 + d1 * c2) (c1 * b2 + d1 * d2)
  abs (Matrix a b c d) = Matrix (abs a) (abs b) (abs c) (abs d)
  signum (Matrix a b c d) = 0
  fromInteger x = Matrix x 0 0 0
  negate (Matrix a b c d) = Matrix (-a) (-b) (-c) (-d)
