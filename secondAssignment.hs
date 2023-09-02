-- 1.
isPrime n = go n (n - 1)
  where
    go n k
      | n < 2 = False -- no negative numbers
      | k <= 1 = True -- reached 1? True
      | n `mod` k == 0 = False -- divisible by a number not itself or 1
      | otherwise = go n (k - 1) -- recurse

everyOther [] = [] -- empty list
everyOther [x] = [x] -- one element
everyOther (x : _ : xs) = x : everyOther xs

problem1 n = everyOther (take (n * 2) [x | x <- [2 ..], isPrime x])

-- 2.
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

problem2 n = go 1 n
  where
    go i n
      | fib i >= n = []
      | (fib i) `mod` 10 == 3 = [fib i] ++ go (i + 1) n
      | otherwise = go (i + 1) n

-- 3.
hasThreeFactors n = go 0 1 n
  where
    go fac div n
      | n <= 3 = False
      | fac > 3 = False
      | div > n && fac /= 3 = False
      | div > n && fac == 3 = True
      | n `mod` div == 0 = go (fac + 1) (div + 1) n
      | otherwise = go fac (div + 1) n

problem3 n = [x | x <- [1 .. n], hasThreeFactors x || x `mod` 5 == 0]