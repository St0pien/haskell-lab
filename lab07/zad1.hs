data Student = Student
  { imie :: String,
    nazwisko :: String,
    nrAlbumu :: Int
  }

instance Show Student where
  show Student {imie = _imie, nazwisko = _nazwisko, nrAlbumu = _nrAlbumu} =
    "imie: " ++ _imie ++ "\nnazwisko: " ++ _nazwisko ++ "\nnrAlbumu: " ++ show _nrAlbumu
