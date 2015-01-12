import Data.Char

lowers    :: String -> Int
lowers xs = length [x|x <- xs, isLower x] 

count      :: Char -> String -> Int
count x xs = length [x'|x' <- xs, x==x']

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

shift                 :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c

encode   :: Int -> String -> String
encode n xs = [shift n x|x <- xs]

percent     :: Int -> Int -> Float
percent x y = 100 * ( a / b)
    where a = fromIntegral x :: Float
          b = fromIntegral y :: Float 

freqs :: String -> [Float]
freqs xs = [percent (count x xs) n|x <- ['a'..'z']]
            where n = lowers xs


-------------------------------------------------------------


