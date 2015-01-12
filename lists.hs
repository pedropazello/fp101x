factors n = [x|x <- [1 .. n], n `mod` x == 0]

-- exercises 
-- 00
sum100 = sum [x ^ 2 | x <- [1 .. 100]]

-- 01
replicate' n a = [a | _ <- [1 .. n]]

-- 02
pyths n 
   = [(x, y, z) | x <- [1 .. n], y <- [1 .. n], z <- [1 .. n],
   x ^ 2 + y ^ 2 == z ^ 2]

-- 03
perfects n = [x | x <- [1 .. n], isPerfect x]
     where isPerfect num = sum (factors num) == num

perfects1 n = [x | x <- [1 .. n], isPerfect x]
     where isPerfect num = sum (init (factors num)) == num

-- 05
find k t = [v | (k', v) <- t, k == k']
