import Data.Char

concat' xss = [x | xs <- xss, x <- xs]

factors n = [x|x <- [1 .. n], n `mod` x == 0]
prime   n = factors n == [1,n]
primes  n = [x|x <- [2..n], prime x] 

positions x xs = [i|(x',i) <- zip xs [0..n], x == x']
               where n = length xs - 1


-- exercises 
-- 00
sum100 = sum [x ^ 2 | x <- [1 .. 100]]

-- 01
replicate' n a = [a | _ <- [1 .. n]]

-- 02
--pyths n 
--   = [(x, y, z) | x <- [1 .. n], y <- [1 .. n], z <- [1 .. n],
--   x ^ 2 + y ^ 2 == z ^ 2]

-- 03
perfects n = [x | x <- [1 .. n], isPerfect x]
     where isPerfect num = sum (factors num) == num

perfects1 n = [x | x <- [1 .. n], isPerfect x]
     where isPerfect num = sum (init (factors num)) == num

-- 05
find k t = [v | (k', v) <- t, k == k']

positions1 x xs = find x (zip xs [0..n])
      where n = length xs - 1

-- 06
scalarproduct2 xs ys = sum [x * y | (x, y) <- xs `zip` ys]

-- 07
let2int c 
    | isLower c = ord c - ord 'a'
    | isUpper c = ord c - ord 'A'

int2let n = chr (ord 'a' + n)

int2let' n = chr (ord 'A' + n)

shift n c
   | isLower c = int2let  ((let2int c + n) `mod` 26)
   | isUpper c = int2let' ((let2int c + n) `mod` 26)
   | otherwise = ' '

encode n xs = [shift n x | x <- xs]

-- 12
riffle2 xs ys = concat [[x, y] | (x, y) <- xs `zip` ys]

-- 13

divides n n' = n `mod` n' == 0
divisors x = [d | d <- [1..x], x `divides` d]
