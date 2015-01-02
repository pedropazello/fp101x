-- 00
{-- (V) == CORRECT
halve xs = (take n xs, drop n xs)
 where n = length xs / 2

halve xs = splitAt (length xs `div` 2) xs
(V)

halve xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
 where n = length xs
(V)

halve xs = splitAt (length xs `div` 2)

halve xs = (take n xs, drop (n + 1) xs)
 where n = length xs `div` 2 

halve xs = splitAt (div (length xs) 2) xs
(V)

halve xs = splitAt (length xs / 2) xs

halve xs = (take n xs, drop n xs)
 where n = length xs `div`
(V)
--}
-- 01
{--
safetail xs = if null xs then [] else tail xs
(V)

safetail [] = []
safetail (_ : xs) = xs
(V)

safetail (_ : xs)
   | null xs   = []
   | otherwise = tail xs 

safetail xs 
   | null xs   = []
   | otherwise = tail xs
(V)

safetail xs = tail xs
safetail [] = []

safetail [] = []
safetail xs = tail xs
(V)

safetail [x] = [x]
safetail (_ : xs) = xs

safetail 
  = \ xs ->
      case xs of
         [] -> []
         (_ : xs) -> xs
(V)
--}
