double x = x + x

quadruple x = double (double x)

-- ghci name.hs and you can run double and quadrupe
-- functions
-- > quadruple 10 shows 40
-- > take (double 2) [1,2,3,4,5,6] shows [1,2,3,4]

factorial n = product [1..n]
average ns = sum ns `div` length ns
-- "x `f` y is just a syntax sugar for f x y"

-- Exercise 0
-- 2 ^ 3 * 4     = (2^3) * 4
-- 2 * 3 + 4 * 5 = (2 * 3) + (4 * 5)
-- 2 + 3 * 4 ^ 5 = 2 +  (3 * (4 ^ 5))

-- Exercise 1
n = a `div` length xs
    where a  = 10
          xs = [1,2,3,4,5]

-- Exercise 2
-- last xs = drop (length xs - 1) xs
-- last [1..5] = drop (length [1,2,3,4,5] -1) [1..5]
-- last[1..5] = drop 4 [1,2,3,4,5]
-- last[1..5] = [5] -- incorrect
--
-- last xs = head (drop (lenght xs - 1) xs)
-- last [1..5] = head (drop (lenght [1..5] - 1) [1..5])
-- last [1..5] = head (drop 4 [1,2,3,4,5])
-- last [1..5] = head [5]
-- last [1..5] = 5 -- correct
--
-- last xs = tail (reverse xs)
-- last [1..5] = tail (reverse [1,2,3,4,5])
-- last [1..5] = tail [5,4,3,2,1]
-- last [1..5] = [4,3,2,1] -- incorrect
--
-- last xs = reverse (head xs)
-- last [1..5] = reverse (head [1,2,3,4,5])
-- last [1..5] = reverse 1 -- cause error (incorrect)
--
-- last xs = xs !! (length xs - 1)
-- last [1..5] = [1..5] !! (length [1,2,3,4,5] - 1)
-- last [1..5] = [1,2,3,4,5] !! 4
-- last [1..5] = 5 -- correct
--
-- last xs = head (drop (length xs) xs)
-- last [1..5] = head (drop (length [1,2,3,4,5]) [1..5] )
-- last [1..5] = head (drop 5 [1,2,3,4,5])
-- last [1..5] = head [] -- Exception empty list incorrect
--
-- last xs = head (reverse xs)
-- last [1..5] = head (reverse [1,2,3,4,5])
-- last [1..5] = head [5,4,3,2,1]
-- last [1..5] = 5 -- correct
--
-- last xs = reverse xs !! (length xs - 1)
-- last [1..5] = reverse [1..5] !! (length [1,2,3,4,5] - 1)
-- last [1..5] = reverse [1,2,3,4,5] !! 4
-- last [1..5] = [5,4,3,2,1] !! 4
-- last [1..5] = 1 -- incorrect
