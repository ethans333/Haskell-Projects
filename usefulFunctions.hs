isPrime n = ip n [2..((isqrt (n)))]
    where
    ip _ [] = True
    ip n (x:xs)
        | n `mod` x == 0 = False
        | otherwise = ip n xs

isqrt :: Integral i => i -> i
isqrt = floor . sqrt . fromIntegral

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
fibList n = [1,1] ++ (go n 1 1 1)
    where
    go n c f s
        | (c+2) > n = []
        | otherwise = (f+s) : go n (c+1) s (f+s)
