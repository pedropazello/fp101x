map1 :: (a -> b) -> [a] -> [b]
map1 f xs = [f x | x <- xs]

map2 :: (a -> b) -> [a] -> [b]
map2 _ []     = []
map2 f (x:xs) = f x : map2 f xs

filter1 :: (a -> Bool) -> [a] -> [a]
filter1 p xs = [x | x <- xs, p x]

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p (x:xs)
    | p x       = x : filter2 p xs
    | otherwise = filter2 p xs

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ v [] = v
foldr' f v (x:xs) = f x (foldr' f v xs)

length' :: [a] -> Int
length' []     = 0
length' (_:xs) = 1 + length xs

reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

all' :: (a -> Bool) -> [a] -> Bool
all' p xs = and [p x | x <- xs]

any' :: (a -> Bool) -> [a] -> Bool
any' p xs = or [p x | x <- xs]

isSpace ' ' = True
isSpace _ = False

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (x:xs)
    | p x       = x : takeWhile' p xs 
    | otherwise = []


isAlpha c
    | c `elem` ['a'..'z'] || c `elem` ['A'..'Z'] = True
    | otherwise = False

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs)
    | p x       = dropWhile' p xs
    | otherwise = x:xs

-- Exercises

evens :: [Integer] -> [Integer]
evens [] = []
evens (x:xs)
    | even x = x : evens xs
    | otherwise = evens xs

squares :: Integer -> [Integer]
squares n = [x * x | x <- [1..n]]

sumSquares :: Integer -> Integer
sumSquares n = sum (squares n)

squares' :: Integer -> Integer -> [Integer]
squares' x y = [z * z | z <- [s..n]]
    where s = y + 1
          n = x + y

sumSquares' x = sum . uncurry squares' $ (x, x)
