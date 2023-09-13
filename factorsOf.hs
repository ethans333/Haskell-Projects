main :: IO ()

factorsOf n = length ([x | x <- [1 .. n], n `mod` x == 0])

factorsOf' n = go n 1
  where
    go n c
      | c > n = []
      | n `mod` c == 0 = c : (go n (c + 1))
      | otherwise = go n (c + 1)

main = do
  print (factorsOf 10)