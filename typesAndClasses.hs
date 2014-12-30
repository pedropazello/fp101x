-- Exercise 0
-- ['a', 'b', 'c'] :: [Char]

-- Exercise 1
-- ('a', 'b', 'c') :: (Char, Char, Char)

-- Exercise 2
-- [(False, '0'), (True, '1')] :: [(Bool, Char)]

-- 3
-- ([False, True], ['0', '1']) :: ([Bool], [Char])

-- 4
-- [tail, init, reverse] :: [[a] -> [a]]

-- 5
second    :: [a] -> a
second xs = head (tail xs)

-- 6
swap        :: (a, b) -> (b, a)
swap (x, y) = (y, x)

-- 7
pair     :: a -> b -> (a, b)
pair x y = (x, y)

-- 8
double   :: Num a => a -> a
double x = x * 2

-- 9
palindrome    :: Eq a => [a] -> Bool 
palindrome xs = reverse xs == xs

-- 10
twice     :: (a -> a) -> a -> a
twice f x = f (f x)

-- Exercise 18
f    :: [a] -> [a]
f xs = take 3 (reverse xs)
