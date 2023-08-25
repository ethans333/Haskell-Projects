main :: IO ()

-- 1.
multTwo x y = x * y

-- 2.
multThree x y z = x * y * z

-- 3.
first_a n = [x | x <- [1 .. n], (x `mod` 6 == 0) || (x `mod` 11 == 0)]

-- 4.
isMult6Or11 x = (x `mod` 6 == 0) || (x `mod` 11 == 0)

first_b n = [x | x <- [1 .. n], isMult6Or11 x]

-- 5.
second_a n =
  [x | x <- [1 .. n], (head (show x)) == '3' && (show x) == reverse (show x)]

main = do
  print (second_a 100)

-- 6.
