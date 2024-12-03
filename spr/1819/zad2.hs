data Expr a
  = Value a
  | Add (Expr a) (Expr a)
  | Mul (Expr a) (Expr a)
  | Sub (Expr a) (Expr a)
  | P

eq :: (Eq a) => Expr a -> Expr a -> Bool
eq P _ = True
eq _ P = True
eq (Value a) (Value b) = a == b
eq (Add a b) (Add c d) = a `eq` c && b `eq` d
eq (Mul a b) (Mul c d) = a `eq` c && b `eq` d
eq (Sub a b) (Sub c d) = a `eq` c && b `eq` d
