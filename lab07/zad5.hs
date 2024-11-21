data GaussNum = Gauss Integer Integer

instance Show GaussNum where
  show (Gauss r i) = show r ++ "+" ++ show i ++ "i"

instance Num GaussNum where
  (+) (Gauss r1 i1) (Gauss r2 i2) = Gauss (r1 + r2) (i1 + i2)
  (*) (Gauss r1 i1) (Gauss r2 i2) = Gauss (r1 * r2 - i1 * i2) (r1 * i2 + r2 * i2)
  abs (Gauss r i) = Gauss (abs r) (abs i)
  signum _ = 0
  fromInteger x = Gauss x 0
  negate (Gauss r i) = Gauss (-r) (-i)
