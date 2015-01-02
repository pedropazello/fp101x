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
-- 2 ^ 3 * 4     = (2 ^ 3) * 4
-- 2 * 3 + 4 * 5 = (2 * 3) + (4 * 5)
-- 2 + 3 * 4 ^ 5 = 2 +  (3 * (4 ^ 5))

-- Exercise 1
n = a `div` length xs
    where a  = 10
          xs = [1,2,3,4,5]

-- Exercise 2


{--
last xs = drop (length xs - 1) xs
last [1..5] = drop (length [1,2,3,4,5] -1) [1..5]
last[1..5] = drop 4 [1,2,3,4,5]
last[1..5] = [5] -- incorrect

last xs = head (drop (lenght xs - 1) xs)
last [1..5] = head (drop (lenght [1..5] - 1) [1..5])
last [1..5] = head (drop 4 [1,2,3,4,5])
last [1..5] = head [5]
last [1..5] = 5 -- correct

last xs = tail (reverse xs)
last [1..5] = tail (reverse [1,2,3,4,5])
last [1..5] = tail [5,4,3,2,1]
last [1..5] = [4,3,2,1] -- incorrect

last xs = reverse (head xs)
last [1..5] = reverse (head [1,2,3,4,5])
last [1..5] = reverse 1 -- cause error (incorrect)

last xs = xs !! (length xs - 1)
last [1..5] = [1..5] !! (length [1,2,3,4,5] - 1)
last [1..5] = [1,2,3,4,5] !! 4
last [1..5] = 5 -- correct

last xs = head (drop (length xs) xs)
last [1..5] = head (drop (length [1,2,3,4,5]) [1..5] )
last [1..5] = head (drop 5 [1,2,3,4,5])
last [1..5] = head [] -- Exception empty list incorrect

last xs = head (reverse xs)
last [1..5] = head (reverse [1,2,3,4,5])
last [1..5] = head [5,4,3,2,1]
last [1..5] = 5 -- correct

last xs = reverse xs !! (length xs - 1)
last [1..5] = reverse [1..5] !! (length [1,2,3,4,5] - 1)
last [1..5] = reverse [1,2,3,4,5] !! 4
last [1..5] = [5,4,3,2,1] !! 4
last [1..5] = 1 -- incorrect


Exercise 3


init xs = tail (reverse xs)
init [1..5] = tail ( reverse [1,2,3,4,5])
init [1..5] = tail [5,4,3,2,1]
init [1..5] = [4,3,2,1] -- incorrect

init xs = reverse (head (reverse xs))
init [1..5] = reverse (head (reverse [1,2,3,4,5]))
init [1..5] = reverse (head [5,4,3,2,1])
init [1..5] = reverse 5 -- cause error/incorrect

init xs = reverse (tail xs)
init [1..5] = reverse (tail [1,2,3,4,5])
init [1..5] = reverse [2,3,4,5]
init [1..5] = [5,4,3,2] -- incorrect

init xs = take (length xs) xs
init [1..5] = take (length [1,2,3,4,5]) [1..5]
init [1..5] = take 5 [1,2,3,4,5]
init [1..5] = [1,2,3,4,5] -- incorrect

init xs = reverse (tail (reverse xs))
init [1..5] = reverse (tail (reverse [1,2,3,4,5]))
init [1..5] = reverse (tail [5,4,3,2,1])
init [1..5] = reverse [4,3,2,1]
init [1..5] = [1,2,3,4] -- correct

init xs = take (length xs - 1) (tail xs)
init [1..5] = take (length [1,2,3,4,5] - 1) (tail [1,2,3,4,5])
init [1..5] = take 4 [2,3,4,5]
init [1..5] = [2,3,4,5] -- incorrect

init xs = drop (length xs - 1) xs
init [1..5] = drop (length [1,2,3,4,5] - 1) [1..5]
init [1..5] = drop 5 [1,2,3,4,5]
init [1..5] = [] -- incorrect

double (double 2)
= { applying the inner double }
double (2 + 2)
= { applying double }
(2 + 2) + (2 + 2)
= { applying the ﬁrst + }
4 + (2 + 2)
= { applying the second + }
4+4
= { applying + }
8

Exercise 5
sum [x]
=   { applying sum }
x + sum []
=   { applying sum }
x + 0
=   { applying + }
x

Exercise 6

product [] = 1
product (x : xs) = x * product xs

product [2, 3, 4]
=   { applying product }
2 ∗ (product [3,4])
=   { applying product }
2 ∗ (3 ∗ product [4])
=   { applying product }
2 ∗ (3 ∗ (4 ∗ product [ ]))
=   { applying product }
2 ∗ (3 ∗ (4 ∗ 1))
=   { applying ∗ }
24
--}
-- Exercise 7

qsort [] = []
qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
  where smaller = [a | a <- xs, a <= x]
        larger  = [b | b <- xs, b > x]	
-- correct

{--

qsort [] = []
qsort (x : xs) = reverse (qsort smaller ++ [x] ++ qsort larger)
  where smaller = [a | a <- xs, a < x]
        larger  = [b | b <- xs, b > x]	
-- incorrect


qsort [] = []
qsort (x : xs) = reverse (qsort smaller ++ [x] ++ qsort larger)
  where x = minimum xs
        smaller = [a | a <- xs, a <= x]
        larger  = [b | b <- xs, b > x]
-- Exception: Prelude.minimum: empty list


qsort [] = []
qsort (x : xs) = reverse (qsort smaller) ++ [x] ++ reverse (qsort larger)
   where smaller = [a | a <- xs, a <= x]
         larger  = [b | b <- xs, b > x]
-- incorrect

qsort [] = []
qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
   where larger  = [a | a <- xs, a > x || a == x]
         smaller = [b | b <- xs, b < x]
-- correct

qsort [] = []
qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
   where smaller = [a | a <- xs, a < x]
         larger  = [b | b <- xs, b > x]
-- correct but in the exercise page is incorrect

qsort [] = []
qsort (x : xs) = reverse 
                 (reverse (qsort smaller) ++ [x] ++ reverse (qsort larger))
                 where smaller = [a | a <- xs, a <= x]
                       larger  = [b | b <- xs, b > x]
-- correct

qsort [] = []
qsort xs = x : qsort larger ++ qsort smaller
  where x = maximum xs
        smaller = [a | a <- xs, a < x]
        larger  = [b | b <- xs, b >= x]
-- infinity loop
--}
