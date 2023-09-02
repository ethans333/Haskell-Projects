main :: IO ()

sumOf n
  | n <= 1 = 1
  | otherwise = n + sumOf (n - 1)

fac n
  | n <= 1 = 1
  | otherwise = n * fac (n - 1)

isPrime n = go n (n - 1)
  where
    go n k
      | n < 2 = False -- no negative numbers
      | k <= 1 = True -- reached 1? True
      | n `mod` k == 0 = False -- divisible by a number not itself or 1
      | otherwise = go n (k - 1) -- recurse

main = do
  print (fac 10)