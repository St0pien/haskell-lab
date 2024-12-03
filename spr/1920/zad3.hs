data Mb a = MbData [a] [a]

dnp :: Mb a -> a -> Mb a
dnp (MbData front back) x = MbData (x : front) back

dnk :: Mb a -> a -> Mb a
dnk (MbData front back) x = MbData front (x : back)

mb2list :: Mb a -> [a]
mb2list (MbData front back) = front ++ reverse back

ull :: Mb a -> Mb a
ull (MbData front back) = MbData [] back

upl :: Mb a -> Mb a
upl (MbData front back) = MbData front back
