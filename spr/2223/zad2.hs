mark :: Double -> String
mark percent
  | percent > 100 || percent < 0 = "Nieprawidłowe dane"
  | percent > 90 = "5.0"
  | percent > 80 = "4.5"
  | percent > 70 = "4.0"
  | percent > 60 = "3.5"
  | percent > 50 = "3.0"
  | otherwise = "2.0"

calcPercent :: Double -> Double -> Double
calcPercent maxPoints points = points / maxPoints * 100

trimName :: String -> String
trimName = dropWhile (== ' ') . reverse . dropWhile (== ' ') . reverse

wyniki :: Double -> [(String, Double)] -> [(String, String)]
wyniki maxPoints = map (\(name, points) -> (trimName name, mark $ calcPercent maxPoints points))
