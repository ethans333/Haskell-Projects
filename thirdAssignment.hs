-- 1
problem1 = map (* 2) [1, 5, -18, 99]

-- 2
problem2 = filter even [1 .. 100]

-- 3
problem3 = map (* 3) [1, 3 .. 77]

-- 4
getOdds xs = filter odd xs

squareAll xs = map (^ 2) xs

problem4 = sum (squareAll (getOdds [1, 2, 3, 4, 5, 7, 8, 1, 43, 25, 65, 22]))