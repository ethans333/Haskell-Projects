main :: IO ()

-- Prime numbers are numbers that can only be divided itself and 1
isPrime n = go (n - 1) n
  where
    go i n
      | i == 1 = True
      | n `mod` i == 0 = False
      | otherwise = go (i - 1) n

main = do
  print (isPrime 9)