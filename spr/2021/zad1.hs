type Point = (Double, Double)

pairs :: [a] -> [(a, a)]
pairs [] = []
pairs [point] = []
pairs (point : points) = map (point,) points ++ pairs points

calcDist :: Point -> Point -> Double
calcDist (x1, y1) (x2, y2) =
  let xDelta = x2 - x1
      yDelta = y2 - y1
   in xDelta * xDelta + yDelta * yDelta

minDist :: [Point] -> (Point, Point, Double)
minDist points =
  let ((firstP1, firstP2) : restPairs) = pairs points
      (r1, r2, rd) =
        foldl
          ( \(minP1, minP2, minDist) (p1, p2) ->
              let dist = calcDist p1 p2
               in if dist < minDist then (p1, p2, dist) else (minP1, minP2, minDist)
          )
          (firstP1, firstP2, calcDist firstP1 firstP2)
          restPairs
   in (r1, r2, sqrt rd)
