import System.IO

main :: IO ()
-- Review triangle numbers
-- x - Non abundant sums
-- File IO

-- Non Abundant Sums

-- Find the sum of all the positive integers which cannot be written as the sum
-- of two abundant numbers.

-- Check if number is abdundant
-- Generate list of abundant numbers
-- Check numbers from 1 to 28123 to see which ones arent == to the sum of two numbers

factorsOf n = [x|x <- [1..n-1], n `mod` x == 0]
isAbundant n = n < sum (factorsOf n)
abundantNums n = [x| x <- [12..n], isAbundant x]

isSumOfTwoAbundants n = go n (abundantNums n) 0 0
  where
  go n xs f s
    | f >= (length xs) = False
    | s >= (length xs) = go n xs (f+1) 0
    | (xs !! f)+(xs !! s)==n = True
    | otherwise = go n xs f (s+1)

sumOfNonSumOfAbundants = sum [x| x <- [24..28123], not (isSumOfTwoAbundants x)]

-- Triangle Numbers


main = do
  print (0)